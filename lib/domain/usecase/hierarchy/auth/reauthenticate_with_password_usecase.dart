import 'package:cueue/domain/model/hierarchy/user/password.dart';

abstract class ReauthenticateWithPasswordUseCase {
  Future<void> call(final Password password);
}
