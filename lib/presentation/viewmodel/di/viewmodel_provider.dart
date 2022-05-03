import 'package:cueue/domain/model/hierarchy/menu/menu_id.dart';
import 'package:cueue/domain/model/hierarchy/recipe/recipe_id.dart';
import 'package:cueue/domain/model/hierarchy/recipe/recipe_search_option.dart';
import 'package:cueue/domain/model/hierarchy/recipe/recipe_summary.dart';
import 'package:cueue/domain/usecase/di/usecase_provider.dart';
import 'package:cueue/presentation/viewmodel/hierarchy/auth/authentication_viewmodel.dart';
import 'package:cueue/presentation/viewmodel/hierarchy/auth/password_reset_viewmodel.dart';
import 'package:cueue/presentation/viewmodel/hierarchy/menu/menu_detail_viewmodel.dart';
import 'package:cueue/presentation/viewmodel/hierarchy/menu/menu_editing_viewmodel.dart';
import 'package:cueue/presentation/viewmodel/hierarchy/menu/menu_viewmodel.dart';
import 'package:cueue/presentation/viewmodel/hierarchy/recipe/recipe_detail_viewmodel.dart';
import 'package:cueue/presentation/viewmodel/hierarchy/recipe/recipe_editing_viewmodel.dart';
import 'package:cueue/presentation/viewmodel/hierarchy/recipe/recipe_selection_viewmodel.dart';
import 'package:cueue/presentation/viewmodel/hierarchy/recipe/recipe_viewmodel.dart';
import 'package:cueue/presentation/viewmodel/hierarchy/search/search_viewmodel.dart';
import 'package:cueue/presentation/viewmodel/hierarchy/setting/about_viewmodel.dart';
import 'package:cueue/presentation/viewmodel/hierarchy/setting/settings_viewmodel.dart';
import 'package:cueue/presentation/viewmodel/hierarchy/splash/splash_viewmodel.dart';
import 'package:cueue/presentation/viewmodel/hierarchy/tag/tag_editing_viewmodel.dart';
import 'package:cueue/presentation/viewmodel/hierarchy/tag/tag_viewmodel.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final splashViewModelProvider = ChangeNotifierProvider.autoDispose((ref) => SplashViewModel(ref.read(isSignInUseCaseProvider)));
final authenticationViewModelProvider = ChangeNotifierProvider.autoDispose((ref) => AuthenticationViewModel(ref.read(shouldShowReauthenticationWithPasswordUseCaseProvider), ref.read(shouldShowReauthenticationWithGoogleUseCaseProvider), ref.read(shouldShowReauthenticationWithAppleUseCaseProvider), ref.read(signUpWithPasswordUseCaseProvider), ref.read(signInWithPasswordUseCaseProvider), ref.read(authenticateWithGoogleUseCaseProvider), ref.read(authenticateWithAppleUseCaseProvider), ref.read(reauthenticateWithPasswordUseCaseProvider), ref.read(reauthenticateWithGoogleUseCaseProvider), ref.read(reauthenticateWithAppleUseCaseProvider)));
final recipeViewModelProvider = ChangeNotifierProvider.autoDispose.family<RecipeViewModel, RecipeSearchOption?>((ref, searchOption) => RecipeViewModel(ref.read(followAllRecipesUseCaseProvider), ref.read(refreshAllRecipesUseCaseProvider), ref.read(requestAdditionalAllRecipesUseCaseProvider), searchOption ?? RecipeSearchOption()));
final recipeSelectionViewModelProvider = ChangeNotifierProvider.autoDispose.family<RecipeSelectionViewModel, List<RecipeSummary>>((ref, recipes) => RecipeSelectionViewModel(ref.read(followTagsUseCaseProvider), ref.read(refreshTagsUseCaseProvider), recipes.toList()));
final tagViewModelProvider = ChangeNotifierProvider.autoDispose((ref) => TagViewModel(ref.read(followTagsUseCaseProvider), ref.read(refreshTagsUseCaseProvider), ref.read(reorderTagUseCaseProvider)));
final menuViewModelProvider = ChangeNotifierProvider.autoDispose((ref) => MenuViewModel(ref.read(followAllMenusUseCaseProvider), ref.read(refreshAllMenusUseCaseProvider), ref.read(requestAdditionalAllMenusUseCaseProvider)));
final searchViewModelProvider = ChangeNotifierProvider.autoDispose((ref) => SearchViewModel(ref.read(followTagsUseCaseProvider), ref.read(refreshTagsUseCaseProvider)));
final settingsViewModelProvider = ChangeNotifierProvider.autoDispose((ref) => SettingsViewModel(ref.read(followUserUseCaseProvider), ref.read(refreshUserUseCaseProvider), ref.read(updateEmailUseCaseProvider), ref.read(updatePasswordUseCaseProvider), ref.read(linkWithGoogleUseCaseProvider), ref.read(linkWithAppleUseCaseProvider), ref.read(unlinkWithGoogleUseCaseProvider), ref.read(unlinkWithAppleUseCaseProvider), ref.read(signOutUseCaseProvider), ref.read(sendEmailVerificationUseCaseProvider)));
final aboutViewModelProvider = ChangeNotifierProvider.autoDispose((ref) => AboutViewModel(ref.read(getAppInfoUseCaseProvider), ref.read(getDeveloperInfoUseCaseProvider)));
final passwordResetViewModelProvider = ChangeNotifierProvider.autoDispose((ref) => PasswordResetViewModel(ref.read(followUserUseCaseProvider), ref.read(sendPasswordResetMailUseCaseProvider)));
final tagEditingViewModelProvider = ChangeNotifierProvider.autoDispose((ref) => TagEditingViewModel(ref.read(createTagUseCaseProvider), ref.read(updateTagUseCaseProvider), ref.read(deleteTagUseCaseProvider)));
final recipeEditingViewModelProvider = ChangeNotifierProvider.autoDispose((ref) => RecipeEditingViewModel(ref.read(followTagsUseCaseProvider), ref.read(refreshTagsUseCaseProvider), ref.read(createRecipeUseCaseProvider), ref.read(updateRecipeUseCaseProvider), ref.read(deleteRecipeUseCaseProvider), ref.read(createContentUseCaseProvider)));
final menuEditingViewModelProvider = ChangeNotifierProvider.autoDispose((ref) => MenuEditingViewModel(ref.read(createMenuUseCaseProvider), ref.read(updateMenuUseCaseProvider), ref.read(deleteMenuUseCaseProvider)));
final recipeDetailViewModelProvider = ChangeNotifierProvider.autoDispose.family<RecipeDetailViewModel, RecipeId>((ref, recipeId) => RecipeDetailViewModel(ref.read(followRecipeUseCaseProvider), ref.read(refreshRecipeUseCaseProvider), recipeId));
final menuDetailViewModelProvider = ChangeNotifierProvider.autoDispose.family<MenuDetailViewModel, MenuId>((ref, menuId) => MenuDetailViewModel(ref.read(followMenuUseCaseProvider), ref.read(refreshMenuUseCaseProvider), menuId));
