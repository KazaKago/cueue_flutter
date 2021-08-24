import 'package:cueue/domain/model/hierarchy/auth/password_auth_info.dart';

abstract class SignUpWithPasswordUseCase {
  Future<void> call(final PasswordAuthInfo authInfo);
}
