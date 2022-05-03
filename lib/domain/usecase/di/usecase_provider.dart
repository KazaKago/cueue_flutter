import 'package:cueue/data/repository/di/repository_provider.dart';
import 'package:cueue/domain/usecase/hierarchy/auth/authenticate_with_apple_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/auth/authenticate_with_apple_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/auth/authenticate_with_google_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/auth/authenticate_with_google_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/auth/is_sign_in_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/auth/is_sign_in_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/auth/link_with_apple_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/auth/link_with_apple_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/auth/link_with_google_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/auth/link_with_google_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/auth/reauthenticate_with_apple_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/auth/reauthenticate_with_apple_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/auth/reauthenticate_with_google_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/auth/reauthenticate_with_google_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/auth/reauthenticate_with_password_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/auth/reauthenticate_with_password_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/auth/should_show_reauthentication_with_apple_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/auth/should_show_reauthentication_with_apple_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/auth/should_show_reauthentication_with_google_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/auth/should_show_reauthentication_with_google_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/auth/should_show_reauthentication_with_password_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/auth/should_show_reauthentication_with_password_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/auth/sign_in_with_password_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/auth/sign_in_with_password_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/auth/sign_out_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/auth/sign_out_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/auth/sign_up_with_password_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/auth/sign_up_with_password_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/auth/unlink_with_apple_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/auth/unlink_with_apple_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/auth/unlink_with_google_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/auth/unlink_with_google_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/content/create_content_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/content/create_content_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/info/get_app_info_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/info/get_app_info_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/info/get_developer_info_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/info/get_developer_info_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/menu/create_menu_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/menu/create_menu_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/menu/delete_menu_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/menu/delete_menu_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/menu/follow_all_menus_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/menu/follow_all_menus_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/menu/follow_menu_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/menu/follow_menu_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/menu/refresh_all_menus_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/menu/refresh_all_menus_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/menu/refresh_menu_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/menu/refresh_menu_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/menu/request_additional_all_menus_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/menu/request_additional_all_menus_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/menu/update_menu_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/menu/update_menu_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/recipe/create_recipe_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/recipe/create_recipe_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/recipe/delete_recipe_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/recipe/delete_recipe_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/recipe/follow_all_recipes_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/recipe/follow_all_recipes_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/recipe/follow_recipe_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/recipe/follow_recipe_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/recipe/refresh_all_recipes_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/recipe/refresh_all_recipes_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/recipe/refresh_recipe_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/recipe/refresh_recipe_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/recipe/request_additional_all_recipes_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/recipe/request_additional_all_recipes_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/recipe/update_recipe_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/recipe/update_recipe_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/store/get_store_link_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/store/get_store_link_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/tag/create_tag_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/tag/create_tag_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/tag/delete_tag_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/tag/delete_tag_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/tag/follow_tags_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/tag/follow_tags_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/tag/refresh_tags_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/tag/refresh_tags_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/tag/reorder_tag_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/tag/reorder_tag_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/tag/update_tag_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/tag/update_tag_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/user/delete_account_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/user/delete_account_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/user/follow_user_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/user/follow_user_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/user/refresh_user_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/user/refresh_user_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/user/send_email_verification_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/user/send_email_verification_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/user/send_password_reset_mail_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/user/send_password_reset_mail_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/user/update_email_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/user/update_email_usecase_impl.dart';
import 'package:cueue/domain/usecase/hierarchy/user/update_password_usecase.dart';
import 'package:cueue/domain/usecase/hierarchy/user/update_password_usecase_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final isSignInUseCaseProvider = Provider<IsSignInUseCase>((ref) => IsSignInUseCaseImpl(ref.read(authorizeRepositoryProvider)));
final signUpWithPasswordUseCaseProvider = Provider<SignUpWithPasswordUseCase>((ref) => SignUpWithPasswordUseCaseImpl(ref.read(authorizeRepositoryProvider), ref.read(userRepositoryProvider)));
final signInWithPasswordUseCaseProvider = Provider<SignInWithPasswordUseCase>((ref) => SignInWithPasswordUseCaseImpl(ref.read(authorizeRepositoryProvider)));
final authenticateWithGoogleUseCaseProvider = Provider<AuthenticateWithGoogleUseCase>((ref) => AuthenticateWithGoogleUseCaseImpl(ref.read(authorizeRepositoryProvider), ref.read(userRepositoryProvider)));
final authenticateWithAppleUseCaseProvider = Provider<AuthenticateWithAppleUseCase>((ref) => AuthenticateWithAppleUseCaseImpl(ref.read(authorizeRepositoryProvider), ref.read(userRepositoryProvider)));
final linkWithGoogleUseCaseProvider = Provider<LinkWithGoogleUseCase>((ref) => LinkWithGoogleUseCaseImpl(ref.read(authorizeRepositoryProvider)));
final linkWithAppleUseCaseProvider = Provider<LinkWithAppleUseCase>((ref) => LinkWithAppleUseCaseImpl(ref.read(authorizeRepositoryProvider)));
final unlinkWithGoogleUseCaseProvider = Provider<UnlinkWithGoogleUseCase>((ref) => UnlinkWithGoogleUseCaseImpl(ref.read(authorizeRepositoryProvider)));
final unlinkWithAppleUseCaseProvider = Provider<UnlinkWithAppleUseCase>((ref) => UnlinkWithAppleUseCaseImpl(ref.read(authorizeRepositoryProvider)));
final reauthenticateWithPasswordUseCaseProvider = Provider<ReauthenticateWithPasswordUseCase>((ref) => ReauthenticateWithPasswordUseCaseImpl(ref.read(authorizeRepositoryProvider), ref.read(userRepositoryProvider)));
final reauthenticateWithGoogleUseCaseProvider = Provider<ReauthenticateWithGoogleUseCase>((ref) => ReauthenticateWithGoogleUseCaseImpl(ref.read(authorizeRepositoryProvider)));
final reauthenticateWithAppleUseCaseProvider = Provider<ReauthenticateWithAppleUseCase>((ref) => ReauthenticateWithAppleUseCaseImpl(ref.read(authorizeRepositoryProvider)));
final shouldShowReauthenticationWithPasswordUseCaseProvider = Provider<ShouldShowReauthenticationWithPasswordUseCase>((ref) => ShouldShowReauthenticationWithPasswordUseCaseImpl(ref.read(userRepositoryProvider)));
final shouldShowReauthenticationWithGoogleUseCaseProvider = Provider<ShouldShowReauthenticationWithGoogleUseCase>((ref) => ShouldShowReauthenticationWithGoogleUseCaseImpl(ref.read(userRepositoryProvider)));
final shouldShowReauthenticationWithAppleUseCaseProvider = Provider<ShouldShowReauthenticationWithAppleUseCase>((ref) => ShouldShowReauthenticationWithAppleUseCaseImpl(ref.read(userRepositoryProvider)));
final signOutUseCaseProvider = Provider<SignOutUseCase>((ref) => SignOutUseCaseImpl(ref.read(authorizeRepositoryProvider)));
final getStoreLinkUseCaseProvider = Provider<GetStoreLinkUseCase>((ref) => GetStoreLinkUseCaseImpl(ref.read(storeRepositoryProvider)));
final getAppInfoUseCaseProvider = Provider<GetAppInfoUseCase>((ref) => GetAppInfoUseCaseImpl(ref.read(infoRepositoryProvider)));
final getDeveloperInfoUseCaseProvider = Provider<GetDeveloperInfoUseCase>((ref) => GetDeveloperInfoUseCaseImpl(ref.read(infoRepositoryProvider)));
final followUserUseCaseProvider = Provider<FollowUserUseCase>((ref) => FollowUserUseCaseImpl(ref.read(userRepositoryProvider)));
final updateEmailUseCaseProvider = Provider<UpdateEmailUseCase>((ref) => UpdateEmailUseCaseImpl(ref.read(userRepositoryProvider)));
final updatePasswordUseCaseProvider = Provider<UpdatePasswordUseCase>((ref) => UpdatePasswordUseCaseImpl(ref.read(authorizeRepositoryProvider), ref.read(userRepositoryProvider)));
final refreshUserUseCaseProvider = Provider<RefreshUserUseCase>((ref) => RefreshUserUseCaseImpl(ref.read(userRepositoryProvider)));
final sendEmailVerificationUseCaseProvider = Provider<SendEmailVerificationUseCase>((ref) => SendEmailVerificationUseCaseImpl(ref.read(userRepositoryProvider)));
final sendPasswordResetMailUseCaseProvider = Provider<SendPasswordResetMailUseCase>((ref) => SendPasswordResetMailUseCaseImpl(ref.read(userRepositoryProvider)));
final followTagsUseCaseProvider = Provider<FollowTagsUseCase>((ref) => FollowTagsUseCaseImpl(ref.read(tagRepositoryProvider)));
final refreshTagsUseCaseProvider = Provider<RefreshTagsUseCase>((ref) => RefreshTagsUseCaseImpl(ref.read(tagRepositoryProvider)));
final followAllRecipesUseCaseProvider = Provider<FollowAllRecipesUseCase>((ref) => FollowAllRecipesUseCaseImpl(ref.read(recipeRepositoryProvider)));
final followRecipeUseCaseProvider = Provider<FollowRecipeUseCase>((ref) => FollowRecipeUseCaseImpl(ref.read(recipeRepositoryProvider)));
final refreshAllRecipesUseCaseProvider = Provider<RefreshAllRecipesUseCase>((ref) => RefreshAllRecipesUseCaseImpl(ref.read(recipeRepositoryProvider)));
final requestAdditionalAllRecipesUseCaseProvider = Provider<RequestAdditionalAllRecipesUseCase>((ref) => RequestAdditionalAllRecipesUseCaseImpl(ref.read(recipeRepositoryProvider)));
final followAllMenusUseCaseProvider = Provider<FollowAllMenusUseCase>((ref) => FollowAllMenusUseCaseImpl(ref.read(menuRepositoryProvider)));
final refreshAllMenusUseCaseProvider = Provider<RefreshAllMenusUseCase>((ref) => RefreshAllMenusUseCaseImpl(ref.read(menuRepositoryProvider)));
final requestAdditionalAllMenusUseCaseProvider = Provider<RequestAdditionalAllMenusUseCase>((ref) => RequestAdditionalAllMenusUseCaseImpl(ref.read(menuRepositoryProvider)));
final createTagUseCaseProvider = Provider<CreateTagUseCase>((ref) => CreateTagUseCaseImpl(ref.read(tagRepositoryProvider)));
final updateTagUseCaseProvider = Provider<UpdateTagUseCase>((ref) => UpdateTagUseCaseImpl(ref.read(tagRepositoryProvider)));
final deleteTagUseCaseProvider = Provider<DeleteTagUseCase>((ref) => DeleteTagUseCaseImpl(ref.read(tagRepositoryProvider)));
final createRecipeUseCaseProvider = Provider<CreateRecipeUseCase>((ref) => CreateRecipeUseCaseImpl(ref.read(recipeRepositoryProvider)));
final updateRecipeUseCaseProvider = Provider<UpdateRecipeUseCase>((ref) => UpdateRecipeUseCaseImpl(ref.read(recipeRepositoryProvider)));
final deleteRecipeUseCaseProvider = Provider<DeleteRecipeUseCase>((ref) => DeleteRecipeUseCaseImpl(ref.read(recipeRepositoryProvider)));
final createMenuUseCaseProvider = Provider<CreateMenuUseCase>((ref) => CreateMenuUseCaseImpl(ref.read(menuRepositoryProvider)));
final updateMenuUseCaseProvider = Provider<UpdateMenuUseCase>((ref) => UpdateMenuUseCaseImpl(ref.read(menuRepositoryProvider)));
final deleteMenuUseCaseProvider = Provider<DeleteMenuUseCase>((ref) => DeleteMenuUseCaseImpl(ref.read(menuRepositoryProvider)));
final createContentUseCaseProvider = Provider<CreateContentUseCase>((ref) => CreateContentUseCaseImpl(ref.read(contentRepositoryProvider)));
final refreshRecipeUseCaseProvider = Provider<RefreshRecipeUseCase>((ref) => RefreshRecipeUseCaseImpl(ref.read(recipeRepositoryProvider)));
final followMenuUseCaseProvider = Provider<FollowMenuUseCase>((ref) => FollowMenuUseCaseImpl(ref.read(menuRepositoryProvider)));
final refreshMenuUseCaseProvider = Provider<RefreshMenuUseCase>((ref) => RefreshMenuUseCaseImpl(ref.read(menuRepositoryProvider)));
final reorderTagUseCaseProvider = Provider<ReorderTagUseCase>((ref) => ReorderTagUseCaseImpl(ref.read(tagRepositoryProvider)));
final deleteAccountUseCaseProvider = Provider<DeleteAccountUseCase>((ref) => DeleteAccountUseCaseImpl(ref.read(userRepositoryProvider)));
