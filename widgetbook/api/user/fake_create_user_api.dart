import 'package:cueue/api/hierarchy/user/create_user_api.dart';
import 'package:cueue/api/request/user/user_request.dart';
import 'package:cueue/api/response/content/content_response.dart';
import 'package:cueue/api/response/user/user_response.dart';
import 'package:cueue/api/response/user/user_summary_response.dart';
import 'package:cueue/api/response/workspace/workspace_response.dart';
import 'package:cueue/gen/assets.gen.dart';

class FakeCreateUserApi implements CreateUserApi {
  const FakeCreateUserApi();

  @override
  Future<UserResponse> call(UserRequest request) async {
    await Future<void>.delayed(const Duration(seconds: 1));
    return UserResponse(
      id: 0,
      displayName: 'display name 1',
      photo: ContentResponse(key: 'key 1', url: Assets.images.time1Asa.path),
      workspace: WorkspaceResponse(
        id: 0,
        name: 'workspace name',
        users: [
          UserSummaryResponse(
            id: 0,
            displayName: 'display name 1',
            photo: ContentResponse(key: 'key 1', url: Assets.images.time1Asa.path),
          ),
          UserSummaryResponse(
            id: 0,
            displayName: 'display name 2',
            photo: ContentResponse(key: 'key 2', url: Assets.images.time2Hiru.path),
          ),
        ],
      ),
    );
  }
}
