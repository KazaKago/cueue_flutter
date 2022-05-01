import 'package:cueue/data/api/hierarchy/content/create_content_api.dart';
import 'package:cueue/data/api/hierarchy/menu/create_menu_api.dart';
import 'package:cueue/data/api/hierarchy/menu/delete_menu_api.dart';
import 'package:cueue/data/api/hierarchy/menu/get_menu_api.dart';
import 'package:cueue/data/api/hierarchy/menu/get_menus_api.dart';
import 'package:cueue/data/api/hierarchy/menu/update_menu_api.dart';
import 'package:cueue/data/api/hierarchy/recipe/create_recipe_api.dart';
import 'package:cueue/data/api/hierarchy/recipe/delete_recipe_api.dart';
import 'package:cueue/data/api/hierarchy/recipe/get_recipe_api.dart';
import 'package:cueue/data/api/hierarchy/recipe/get_recipes_api.dart';
import 'package:cueue/data/api/hierarchy/recipe/update_recipe_api.dart';
import 'package:cueue/data/api/hierarchy/tag/create_tag_api.dart';
import 'package:cueue/data/api/hierarchy/tag/delete_tag_api.dart';
import 'package:cueue/data/api/hierarchy/tag/get_tags_api.dart';
import 'package:cueue/data/api/hierarchy/tag/update_tag_api.dart';
import 'package:cueue/data/api/hierarchy/user/create_user_api.dart';
import 'package:cueue/data/api/hierarchy/user/get_user_api.dart';
import 'package:cueue/data/repository/di/repository_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final getUserApiProvider = Provider((ref) => GetUserApi(ref.read(dioCreatorProvider).create()));
final createUserApiProvider = Provider((ref) => CreateUserApi(ref.read(dioCreatorProvider).create()));
final getRecipesApiProvider = Provider((ref) => GetRecipesApi(ref.read(dioCreatorProvider).create()));
final getRecipeApiProvider = Provider((ref) => GetRecipeApi(ref.read(dioCreatorProvider).create()));
final getTagsApiProvider = Provider((ref) => GetTagsApi(ref.read(dioCreatorProvider).create()));
final getMenuApiProvider = Provider((ref) => GetMenuApi(ref.read(dioCreatorProvider).create()));
final getMenusApiProvider = Provider((ref) => GetMenusApi(ref.read(dioCreatorProvider).create()));
final createTagApiProvider = Provider((ref) => CreateTagApi(ref.read(dioCreatorProvider).create()));
final updateTagApiProvider = Provider((ref) => UpdateTagApi(ref.read(dioCreatorProvider).create()));
final deleteTagApiProvider = Provider((ref) => DeleteTagApi(ref.read(dioCreatorProvider).create()));
final createRecipeApiProvider = Provider((ref) => CreateRecipeApi(ref.read(dioCreatorProvider).create()));
final updateRecipeApiProvider = Provider((ref) => UpdateRecipeApi(ref.read(dioCreatorProvider).create()));
final deleteRecipeApiProvider = Provider((ref) => DeleteRecipeApi(ref.read(dioCreatorProvider).create()));
final createMenuApiProvider = Provider((ref) => CreateMenuApi(ref.read(dioCreatorProvider).create()));
final updateMenuApiProvider = Provider((ref) => UpdateMenuApi(ref.read(dioCreatorProvider).create()));
final deleteMenuApiProvider = Provider((ref) => DeleteMenuApi(ref.read(dioCreatorProvider).create()));
final createContentApiProvider = Provider((ref) => CreateContentApi(ref.read(dioCreatorProvider).create()));
