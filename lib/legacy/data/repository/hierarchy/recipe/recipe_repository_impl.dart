import 'package:cueue/api/hierarchy/recipe/create_recipe_api.dart';
import 'package:cueue/api/hierarchy/recipe/delete_recipe_api.dart';
import 'package:cueue/api/hierarchy/recipe/update_recipe_api.dart';
import 'package:cueue/legacy/data/cache/hierarchy/recipe/recipe_cache.dart';
import 'package:cueue/legacy/data/repository/flowable/menu/menu_summary_flowable_factory.dart';
import 'package:cueue/legacy/data/repository/flowable/recipe/recipe_flowable_factory.dart';
import 'package:cueue/legacy/data/repository/flowable/recipe/recipes_flowable_factory.dart';
import 'package:cueue/legacy/domain/repository/hierarchy/recipe/recipe_repository.dart';
import 'package:cueue/mapper/recipe/recipe_request_mapper.dart';
import 'package:cueue/mapper/recipe/recipe_response_mapper.dart';
import 'package:cueue/model/menu/menu_summary_impl.dart';
import 'package:cueue/model/recipe/recipe.dart';
import 'package:cueue/model/recipe/recipe_id.dart';
import 'package:cueue/model/recipe/recipe_registration.dart';
import 'package:cueue/model/recipe/recipe_search_option.dart';
import 'package:cueue/model/recipe/recipe_summary.dart';
import 'package:store_flowable/store_flowable.dart';

class RecipeRepositoryImpl implements RecipeRepository {
  const RecipeRepositoryImpl(this._recipeCache, this._createRecipeApi, this._updateRecipeApi, this._deleteRecipeApi, this._recipeResponseMapper, this._recipeRequestMapper, this._recipesFlowableFactory, this._recipeFlowableFactory, this._menuSummaryFlowableFactory);

  final RecipeCache _recipeCache;
  final CreateRecipeApi _createRecipeApi;
  final UpdateRecipeApi _updateRecipeApi;
  final DeleteRecipeApi _deleteRecipeApi;
  final RecipeResponseMapper _recipeResponseMapper;
  final RecipeRequestMapper _recipeRequestMapper;
  final RecipesFlowableFactory _recipesFlowableFactory;
  final RecipeFlowableFactory _recipeFlowableFactory;
  final MenuSummaryFlowableFactory _menuSummaryFlowableFactory;

  @override
  LoadingStateStream<List<RecipeSummary>> followAllData(RecipeSearchOption searchOption) {
    final recipesFlowable = _recipesFlowableFactory.create(searchOption);
    return recipesFlowable.publish();
  }

  @override
  LoadingStateStream<Recipe> followData(RecipeId recipeId) {
    final recipeFlowable = _recipeFlowableFactory.create(recipeId);
    return recipeFlowable.publish();
  }

  @override
  Future<void> refreshAllData(RecipeSearchOption searchOption) async {
    final recipesFlowable = _recipesFlowableFactory.create(searchOption);
    await recipesFlowable.refresh();
  }

  @override
  Future<void> refreshData(RecipeId recipeId) async {
    final recipeFlowable = _recipeFlowableFactory.create(recipeId);
    return recipeFlowable.refresh();
  }

  @override
  Future<void> requestAdditionalAllData(RecipeSearchOption searchOption, {required bool continueWhenError}) async {
    final recipesFlowable = _recipesFlowableFactory.create(searchOption);
    await recipesFlowable.requestNextData(continueWhenError: continueWhenError);
  }

  @override
  Future<void> create(RecipeRegistration recipeRegistration) async {
    final response = await _createRecipeApi(_recipeRequestMapper(recipeRegistration));
    final recipe = _recipeResponseMapper.map(response);

    // 1. Add to Recipe cache
    final recipeFlowable = _recipeFlowableFactory.create(recipe.id);
    await recipeFlowable.update(recipe);

    // 2. Add to 'all' RecipeSummaries cache
    final recipesFlowable = _recipesFlowableFactory.create(RecipeSearchOption());
    final cachedRecipeSummaries = await recipesFlowable.getData(from: GettingFrom.cache);
    if (cachedRecipeSummaries != null) {
      final recipeSummaries = <RecipeSummary>[recipe] + cachedRecipeSummaries;
      await recipesFlowable.update(recipeSummaries);
    }

    // 3. Add to 'tagged' RecipeSummaries cache
    for (final tag in recipe.tags) {
      final recipesFlowable = _recipesFlowableFactory.create(RecipeSearchOption(tagIds: List.filled(1, tag.id)));
      final cachedRecipeSummaries = await recipesFlowable.getData(from: GettingFrom.cache);
      if (cachedRecipeSummaries != null) {
        final recipeSummaries = <RecipeSummary>[recipe] + cachedRecipeSummaries;
        await recipesFlowable.update(recipeSummaries);
      }
    }
  }

  @override
  Future<void> update(RecipeId recipeId, RecipeRegistration recipeRegistration) async {
    final response = await _updateRecipeApi(recipeId.value, _recipeRequestMapper(recipeRegistration));
    final recipe = _recipeResponseMapper.map(response);

    // 1. Update for Recipe cache
    final recipeFlowable = _recipeFlowableFactory.create(recipeId);
    await recipeFlowable.update(recipe);

    // 2. Update for 'all' RecipeSummaries cache
    final recipesFlowable = _recipesFlowableFactory.create(RecipeSearchOption());
    final cachedRecipeSummaries = await recipesFlowable.getData(from: GettingFrom.cache);
    if (cachedRecipeSummaries != null) {
      final recipeSummaries = cachedRecipeSummaries.map((e) => (e.id == recipe.id) ? recipe : e).toList();
      await recipesFlowable.update(recipeSummaries);
    }

    // 3. Update for 'tagged' RecipeSummaries cache
    _recipeCache.recipeSummaries.forEach((key, value) async {
      final tagIds = recipe.tags.map((e) => e.id);
      if (key.tagIds?.isNotEmpty == true && key.tagIds?.any(tagIds.contains) == false) {
        final recipesFlowable = _recipesFlowableFactory.create(key);
        final cachedRecipeSummaries = await recipesFlowable.getData(from: GettingFrom.cache);
        if (cachedRecipeSummaries != null) {
          // Remove
          final recipeSummaries = cachedRecipeSummaries.where((e) => e.id != recipe.id).toList();
          await recipesFlowable.update(recipeSummaries);
        }
      }
    });
    for (final tag in recipe.tags) {
      final recipesFlowable = _recipesFlowableFactory.create(RecipeSearchOption(tagIds: List.filled(1, tag.id)));
      final cachedRecipeSummaries = await recipesFlowable.getData(from: GettingFrom.cache);
      if (cachedRecipeSummaries != null) {
        List<RecipeSummary> recipeSummaries;
        if (cachedRecipeSummaries.where((e) => e.id == recipe.id).isNotEmpty) {
          // Update
          recipeSummaries = cachedRecipeSummaries.map((e) => (e.id == recipe.id) ? recipe : e).toList();
        } else {
          // Add
          recipeSummaries = <RecipeSummary>[recipe] + cachedRecipeSummaries;
        }
        await recipesFlowable.update(recipeSummaries);
      }
    }

    // 4. Update for MenuSummaries cache
    final menuSummariesFlowable = _menuSummaryFlowableFactory.create(null);
    final cachedMenuSummaries = await menuSummariesFlowable.getData(from: GettingFrom.cache);
    if (cachedMenuSummaries != null) {
      final menuSummaries = cachedMenuSummaries.map((menu) {
        return MenuSummaryImpl(
          id: menu.id,
          memo: menu.memo,
          date: menu.date,
          timeFrame: menu.timeFrame,
          recipes: menu.recipes.map((e) => (e.id == recipe.id) ? recipe : e).toList(),
        );
      }).toList();
      await menuSummariesFlowable.update(menuSummaries);
    }
  }

  @override
  Future<void> delete(RecipeId recipeId) async {
    await _deleteRecipeApi(recipeId.value);

    // 1. Remove from Recipe cache
    final recipeFlowable = _recipeFlowableFactory.create(recipeId);
    await recipeFlowable.update(null);

    // 2. Remove from RecipeSummaries cache
    _recipeCache.recipeSummaries.forEach((key, value) async {
      final recipesFlowable = _recipesFlowableFactory.create(key);
      final cachedRecipeSummaries = await recipesFlowable.getData(from: GettingFrom.cache);
      if (cachedRecipeSummaries != null) {
        final recipeSummaries = cachedRecipeSummaries.where((e) => e.id != recipeId).toList();
        await recipesFlowable.update(recipeSummaries);
      }
    });

    // 3. Remove from MenuSummaries cache
    final menuSummaryFlowable = _menuSummaryFlowableFactory.create(null);
    final cachedMenuSummaries = await menuSummaryFlowable.getData(from: GettingFrom.cache);
    if (cachedMenuSummaries != null) {
      final menuSummaries = cachedMenuSummaries.map((menu) {
        return MenuSummaryImpl(
          id: menu.id,
          memo: menu.memo,
          date: menu.date,
          timeFrame: menu.timeFrame,
          recipes: menu.recipes.where((e) => e.id != recipeId).toList(),
        );
      }).toList();
      await menuSummaryFlowable.update(menuSummaries);
    }
  }
}
