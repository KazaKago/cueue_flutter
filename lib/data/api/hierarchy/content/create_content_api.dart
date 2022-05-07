import 'package:cueue/data/api/global/requester/dio_creator.dart';
import 'package:cueue/data/api/global/requester/error_classifier.dart';
import 'package:cueue/data/api/request/recipe/content_request.dart';
import 'package:cueue/data/api/response/content/content_response.dart';
import 'package:dio/dio.dart';

class CreateContentApi {
  const CreateContentApi(this._dioCreator);

  final DioCreator _dioCreator;

  Future<ContentResponse> execute(ContentRequest request) async {
    try {
      final dio = await _dioCreator.create();
      final response = await dio.post<Map<String, dynamic>>('/contents', data: request);
      return ContentResponse.fromJson(response.data!);
    } on DioError catch (dioError) {
      throw dioError.parseException();
    }
  }
}
