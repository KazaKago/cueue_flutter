import 'package:cueue/data/api/di/api_provider.dart';
import 'package:cueue/data/api/global/requester/dio_creator.dart';
import 'package:cueue/data/auth/di/auth_provider.dart';
import 'package:cueue/data/cache/di/cache_provider.dart';
import 'package:cueue/data/mapper/di/mapper_provider.dart';
import 'package:cueue/data/repository/flowable/menu/menu_flowable_factory.dart';
import 'package:cueue/data/repository/flowable/menu/menu_summary_flowable_factory.dart';
import 'package:cueue/data/repository/flowable/recipe/recipe_flowable_factory.dart';
import 'package:cueue/data/repository/flowable/recipe/recipes_flowable_factory.dart';
import 'package:cueue/data/repository/flowable/tag/tag_flowable_factory.dart';
import 'package:cueue/data/repository/flowable/user/user_flowable_factory.dart';
import 'package:cueue/data/repository/global/requester/dio_creator_impl.dart';
import 'package:cueue/data/repository/hierarchy/auth/authorize_repository_impl.dart';
import 'package:cueue/data/repository/hierarchy/content/content_repository_impl.dart';
import 'package:cueue/data/repository/hierarchy/info/info_repository_impl.dart';
import 'package:cueue/data/repository/hierarchy/invitation/invitation_repository_impl.dart';
import 'package:cueue/data/repository/hierarchy/menu/menu_repository_impl.dart';
import 'package:cueue/data/repository/hierarchy/recipe/recipe_repository_impl.dart';
import 'package:cueue/data/repository/hierarchy/store/store_repository_impl.dart';
import 'package:cueue/data/repository/hierarchy/tag/tag_repository_impl.dart';
import 'package:cueue/data/repository/hierarchy/user/user_repository_impl.dart';
import 'package:cueue/data/repository/hierarchy/workspace/workspace_repository_impl.dart';
import 'package:cueue/data/resource/di/resource_provider.dart';
import 'package:cueue/domain/repository/hierarchy/auth/authorize_repository.dart';
import 'package:cueue/domain/repository/hierarchy/content/content_repository.dart';
import 'package:cueue/domain/repository/hierarchy/info/info_repository.dart';
import 'package:cueue/domain/repository/hierarchy/invitation/invitation_repository.dart';
import 'package:cueue/domain/repository/hierarchy/menu/menu_repository.dart';
import 'package:cueue/domain/repository/hierarchy/recipe/recipe_repository.dart';
import 'package:cueue/domain/repository/hierarchy/store/store_repository.dart';
import 'package:cueue/domain/repository/hierarchy/tag/tag_repository.dart';
import 'package:cueue/domain/repository/hierarchy/user/user_repository.dart';
import 'package:cueue/domain/repository/hierarchy/workspace/workspace_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dioCreatorProvider = Provider<DioCreator>((_) => DioCreatorImpl());
final authorizeRepositoryProvider = Provider<AuthorizeRepository>((ref) => AuthorizeRepositoryImpl(ref.read(googleSignaturerProvider), ref.read(appleSignaturerProvider), ref.read(allCacheProvider), ref.read(userFlowableFactoryProvider)));
final contentRepositoryProvider = Provider<ContentRepository>((ref) => ContentRepositoryImpl(ref.read(createContentApiProvider), ref.read(contentRequestMapperProvider), ref.read(contentResponseMapperProvider)));
final userRepositoryProvider = Provider<UserRepository>((ref) => UserRepositoryImpl(ref.read(allCacheProvider), ref.read(createUserApiProvider), ref.read(updateUserApiProvider), ref.read(userFlowableFactoryProvider), ref.read(userResponseMapperProvider), ref.read(userRequestMapperProvider)));
final tagRepositoryProvider = Provider<TagRepository>((ref) => TagRepositoryImpl(ref.read(recipeCacheProvider), ref.read(createTagApiProvider), ref.read(updateTagApiProvider), ref.read(deleteTagApiProvider), ref.read(orderTagApiProvider), ref.read(tagResponseMapperProvider), ref.read(tagRequestMapperProvider), ref.read(tagOrderRequestMapperProvider), ref.read(tagFlowableFactoryProvider), ref.read(recipeFlowableFactoryProvider)));
final recipeRepositoryProvider = Provider<RecipeRepository>((ref) => RecipeRepositoryImpl(ref.read(recipeCacheProvider), ref.read(menuCacheProvider), ref.read(createRecipeApiProvider), ref.read(updateRecipeApiProvider), ref.read(deleteRecipeApiProvider), ref.read(recipeResponseMapperProvider), ref.read(recipeRequestMapperProvider), ref.read(recipesFlowableFactoryProvider), ref.read(recipeFlowableFactoryProvider), ref.read(menuFlowableFactoryProvider), ref.read(menuSummaryFlowableFactoryProvider)));
final menuRepositoryProvider = Provider<MenuRepository>((ref) => MenuRepositoryImpl(ref.read(createMenuApiProvider), ref.read(updateMenuApiProvider), ref.read(deleteMenuApiProvider), ref.read(menuResponseMapperProvider), ref.read(menuRequestMapperProvider), ref.read(menuFlowableFactoryProvider), ref.read(menuSummaryFlowableFactoryProvider)));
final storeRepositoryProvider = Provider<StoreRepository>((ref) => StoreRepositoryImpl(ref.read(storeInfoConstantsProvider)));
final infoRepositoryProvider = Provider<InfoRepository>((ref) => InfoRepositoryImpl(ref.read(developerInfoConstantsProvider)));
final workspaceRepositoryProvider = Provider<WorkspaceRepository>((ref) => WorkspaceRepositoryImpl(ref.read(createWorkspaceApiProvider), ref.read(updateWorkspaceApiProvider), ref.read(userFlowableFactoryProvider), ref.read(workspaceResponseMapperProvider), ref.read(workspaceRequestMapperProvider)));
final invitationRepositoryProvider = Provider<InvitationRepository>((ref) => InvitationRepositoryImpl(ref.read(getInvitationApiProvider), ref.read(createInvitationApiProvider), ref.read(acceptInvitationApiProvider), ref.read(invitationResponseMapperProvider), ref.read(userResponseMapperProvider), ref.read(userFlowableFactoryProvider)));
final userFlowableFactoryProvider = Provider<UserFlowableFactory>((ref) => UserFlowableFactory(ref.read(userCacheProvider), ref.read(userStateManagerProvider), ref.read(getUserApiProvider), ref.read(userResponseMapperProvider)));
final menuFlowableFactoryProvider = Provider<MenuFlowableFactory>((ref) => MenuFlowableFactory(ref.read(menuCacheProvider), ref.read(menuStateManagerProvider), ref.read(getMenuApiProvider), ref.read(menuResponseMapperProvider)));
final menuSummaryFlowableFactoryProvider = Provider<MenuSummaryFlowableFactory>((ref) => MenuSummaryFlowableFactory(ref.read(menuCacheProvider), ref.read(menuSummaryStateManagerProvider), ref.read(getMenusApiProvider), ref.read(menuSummaryResponseMapperProvider)));
final recipesFlowableFactoryProvider = Provider<RecipesFlowableFactory>((ref) => RecipesFlowableFactory(ref.read(recipeCacheProvider), ref.read(recipesStateManagerProvider), ref.read(getRecipesApiProvider), ref.read(recipeSummaryResponseMapperProvider)));
final recipeFlowableFactoryProvider = Provider<RecipeFlowableFactory>((ref) => RecipeFlowableFactory(ref.read(recipeCacheProvider), ref.read(recipeStateManagerProvider), ref.read(getRecipeApiProvider), ref.read(recipeResponseMapperProvider)));
final tagFlowableFactoryProvider = Provider<TagFlowableFactory>((ref) => TagFlowableFactory(ref.read(tagCacheProvider), ref.read(tagStateManagerProvider), ref.read(getTagsApiProvider), ref.read(tagResponseMapperProvider)));
