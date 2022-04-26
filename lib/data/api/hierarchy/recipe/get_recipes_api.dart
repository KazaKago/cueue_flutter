import 'package:cueue/data/api/global/requester/authorized_api_requester.dart';
import 'package:cueue/data/api/global/requester/error_classifier.dart';
import 'package:cueue/data/api/response/recipe/recipe_summary_response.dart';
import 'package:dio/dio.dart';

class GetRecipesApi {
  const GetRecipesApi(this._requester);

  final AuthorizedApiRequester _requester;

  Future<List<RecipeSummaryResponse>> execute(int workspaceId, {int? afterId, int? tagId}) async {
    try {
      final queryParameters = <String, dynamic>{};
      if (afterId != null) queryParameters.addAll(<String, dynamic>{'after_id': afterId});
      if (tagId != null) queryParameters.addAll(<String, dynamic>{'tag_id': tagId});
      final response = await _requester.create().get<List<dynamic>>('/$workspaceId/recipes', queryParameters: queryParameters);
      return response.data!.map<RecipeSummaryResponse>((dynamic json) {
        return RecipeSummaryResponse.fromJson(json as Map<String, dynamic>);
      }).toList();
    } on DioError catch (dioError) {
      throw dioError.parseException();
    }
  }
}
