// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_ui/components/common/dialog/update/update_model.dart';

class UpdateAPI {
  final API _api = Get.find<APIController>().api;

  Future<UpdateModel> checkUpdate({
    required String branch,
    required String currentType,
    ExtraRequestOptions? options,
  }) async {
    late String path;
    switch (currentType) {
      case 'cashier':
        path = APIPath.baseCheckUpdate.cashierPath;
        break;
      case 'assistant':
        path = APIPath.baseCheckUpdate.assistantPath;
        break;
      case 'tablet':
        path = APIPath.baseCheckUpdate.tabletPath;
        break;
      case 'kitchen':
        path = APIPath.baseCheckUpdate.kitchenPath;
        break;
    }
    final response = await _api.getWithRequestOptions(
      path,
      requestOptions: options,
      data: {'branch': branch},
    );
    return UpdateModel.fromJson(response.data);
  }
}
