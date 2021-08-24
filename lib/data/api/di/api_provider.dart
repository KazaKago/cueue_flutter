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
import 'package:cueue/data/repository/di/repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final createUserApiProvider = Provider((ref) => CreateUserApi(ref.read(authorizedApiRequesterProvider)));
final getRecipesApiProvider = Provider((ref) => GetRecipesApi(ref.read(authorizedApiRequesterProvider)));
final getRecipeApiProvider = Provider((ref) => GetRecipeApi(ref.read(authorizedApiRequesterProvider)));
final getTagsApiProvider = Provider((ref) => GetTagsApi(ref.read(authorizedApiRequesterProvider)));
final getMenuApiProvider = Provider((ref) => GetMenuApi(ref.read(authorizedApiRequesterProvider)));
final getMenusApiProvider = Provider((ref) => GetMenusApi(ref.read(authorizedApiRequesterProvider)));
final createTagApiProvider = Provider((ref) => CreateTagApi(ref.read(authorizedApiRequesterProvider)));
final updateTagApiProvider = Provider((ref) => UpdateTagApi(ref.read(authorizedApiRequesterProvider)));
final deleteTagApiProvider = Provider((ref) => DeleteTagApi(ref.read(authorizedApiRequesterProvider)));
final createRecipeApiProvider = Provider((ref) => CreateRecipeApi(ref.read(authorizedApiRequesterProvider)));
final updateRecipeApiProvider = Provider((ref) => UpdateRecipeApi(ref.read(authorizedApiRequesterProvider)));
final deleteRecipeApiProvider = Provider((ref) => DeleteRecipeApi(ref.read(authorizedApiRequesterProvider)));
final createMenuApiProvider = Provider((ref) => CreateMenuApi(ref.read(authorizedApiRequesterProvider)));
final updateMenuApiProvider = Provider((ref) => UpdateMenuApi(ref.read(authorizedApiRequesterProvider)));
final deleteMenuApiProvider = Provider((ref) => DeleteMenuApi(ref.read(authorizedApiRequesterProvider)));
final createContentApiProvider = Provider((ref) => CreateContentApi(ref.read(authorizedApiRequesterProvider)));
