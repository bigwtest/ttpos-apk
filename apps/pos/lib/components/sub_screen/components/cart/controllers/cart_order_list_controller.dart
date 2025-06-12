import 'package:get/get.dart';
import 'package:pos/components/sub_screen/components/qrcode/qrcode.dart';
import 'package:pos/model/response/cart/cart_product.dart';
import 'package:ttpos_ui/components/common/dialog/base.dart';

class CartOrderListController extends GetxController {
  // 产品列表
  final RxList<ResponseCartProduct> _cartList = <ResponseCartProduct>[].obs;
  List<ResponseCartProduct> get cartList => _cartList.toList();
  set cartList(List<ResponseCartProduct> value) {
    _cartList.assignAll(value);
  }

  void reset() {
    _cartList.assignAll([]);
  }

  // @override
  // void onInit() async {
  //   //
  //   super.onInit();
  // }

  // @override
  // void dispose() {
  //   //
  //   super.dispose();
  // }

  // 打开支付弹窗
  void showQrcodePayDialog(QrcodeModel detail) {
    Get.dialog(
      DismissKeyboardDialog(
        child: Qrcode(
          detail: detail,
        ),
      ),
    );
  }
}
