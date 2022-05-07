import 'package:cueue/data/api/global/requester/dio_creator.dart';
import 'package:cueue/data/api/global/requester/error_classifier.dart';
import 'package:dio/dio.dart';

class DeleteMenuApi {
  const DeleteMenuApi(this._dioCreator);

  final DioCreator _dioCreator;

  Future<void> execute(int workspaceId, int menuId) async {
    try {
      final dio = await _dioCreator.create();
      await dio.delete<void>('/$workspaceId/menus/$menuId');
    } on DioError catch (dioError) {
      throw dioError.parseException();
    }
  }
}
