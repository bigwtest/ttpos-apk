import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_api/refresh_service.dart';
import 'package:ttpos_model/carousel/carousel_item.dart';
import 'package:ttpos_ui/api/sub_screen/carousel_api.dart';

class AdvertisementController extends GetxController {
  List<ResponseCarouselItem> carouselList = [];

  Worker? _refreshWorker;

  @override
  void onReady() {
    super.onReady();

    loadCarouselListFromAPI();

    _refreshWorker = ever(
      RefreshService.to.signal,
      (_) {
        debugPrint('[AdvertisementController] 收到 refreshSignal 信号');
        loadCarouselListFromAPI();
      },
    );
  }

  @override
  void onClose() {
    _refreshWorker?.dispose();
    _refreshWorker = null;
    //
    super.onClose();
  }

  bool _isLoading = false;

  Future<void> loadCarouselListFromAPI() async {
    if (_isLoading) return;
    _isLoading = true;
    try {
      if (!Get.isRegistered<TokenController>()) {
        throw Exception('TokenController 未注册');
      }

      final tokenController = Get.find<TokenController>();
      final token = tokenController.token;
      if (token == null || token.isEmpty) {
        throw Exception('Token 未注册');
      }

      final list = await CarouselAPI().getCarouselList();
      if (list == null) return;
      carouselList = list;
      // 发送数据到副屏，不用在这个时候发送，有可能会覆盖
      // SubScreenService.send(
      //   method: ScreenMessageType.carouselName,
      //   data: {
      //     'carouselList': jsonEncode(carouselList),
      //   },
      // );
    } catch (error, stackTrace) {
      debugPrint('loadCarouselListFromAPI Error: $error');
      debugPrintStack(stackTrace: stackTrace);
    } finally {
      _isLoading = false;
    }
  }
}
