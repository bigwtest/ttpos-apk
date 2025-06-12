import 'package:get/get.dart';
import 'package:pos/controllers/order_list/order_re_refund_controller.dart';
import 'package:pos/controllers/order_list/order_refund_controller.dart';
import 'package:pos/controllers/top_up_list/top_up_re_refund_controller.dart';
import 'package:pos/controllers/top_up_list/top_up_refund_controller.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';

class QrDialogController extends GetxController {
  final _isReadOnly = true.obs; // 控制表单是否只读
  bool get isReadOnly => _isReadOnly.value;
  set isReadOnly(bool value) => _isReadOnly.value = value;

  final _isEditMode = false.obs; // 控制表单点确定的时候是编辑 还是 重新退款
  bool get isEditMode => _isEditMode.value;
  set isEditMode(bool value) => _isEditMode.value = value;

  final RxString _qrType = ''.obs;
  String get qrType => _qrType.value;
  set qrType(String value) => _qrType.value = value;

  final List<Map<String, String>> bankList = [
    {'label': 'BANGKOK BANK (BBL)', 'value': '002'},
    {'label': 'KASIKORNBANK (KBANK)', 'value': '004'},
    {'label': 'KRUNG THAI BANK (KTB)', 'value': '006'},
    {'label': 'TMBTHANACHART BANK (TTB)', 'value': '011'},
    {'label': 'SIAM COMMERCIAL BANK (SCB)', 'value': '014'},
    {'label': 'CITIBANK BANGKOK BRANCH (CITI)', 'value': '017'},
    {'label': 'SUMITOMO MITSUI BANK (SMBC)', 'value': '018'},
    {'label': 'STANDARD CHARTERED BANK THAI (SCBT)', 'value': '020'},
    {'label': 'CIMB THAI BANK (CIMBT)', 'value': '022'},
    {'label': 'UNITED OVERSEAS BANK THAI (UOBT)', 'value': '024'},
    {'label': 'BANK OF AYUDHYA (BAY)', 'value': '025'},
    {'label': 'GOVERNMENT SAVINGS BANK (GSB)', 'value': '030'},
    {'label': 'THE HONGKONG AND SHANGHAI BANKING CORPORATION (HSBC)', 'value': '031'},
    {'label': 'GOVERNMENT HOUSING BANK (GHB)', 'value': '033'},
    {'label': 'BANK FOR AGRICULTURE AND AGRICULTURAL COOPERATIVES (BAAC)', 'value': '034'},
    {'label': 'MIZUHO CORPORATE BANK (MHCB)', 'value': '039'},
    {'label': 'ISLAMIC BANK OF THAILAND (ISBT)', 'value': 'ISBT'},
    {'label': 'TISCO BANK (TISCO)', 'value': 'TISCO'},
    {'label': 'KIATNAKIN BANK (KK)', 'value': '069'},
    {'label': 'INDUSTRIAL AND COMMERCIAL BANK OF CHINA (ICBC THAI)', 'value': '070'},
    {'label': 'THAI CREDIT RETAIL BANK (TCRB)', 'value': '071'},
    {'label': 'LAND AND HOUSES BANK (LH BANK)', 'value': '073'},
  ];

  final RxString _accountName = ''.obs;
  String get accountName => _accountName.value;
  set accountName(String value) => _accountName.value = value;

  final RxString _accountNo = ''.obs;
  String get accountNo => _accountNo.value;
  set accountNo(String value) => _accountNo.value = value;

  final RxString _bankCode = ''.obs;
  String get bankCode => _bankCode.value;
  set bankCode(String value) => _bankCode.value = value;

  void toggleEditMode() {
    isReadOnly = !isReadOnly;
  }

  void onModify() {
    // 修改操作
    toggleEditMode();
  }

  void onReissue({required String qrType}) {
    // 重新退款
    if (accountName.isEmpty || accountNo.isEmpty || bankCode.isEmpty) {
      DialogManager.showToast('请填写必填项'.tr);
      return;
    }
    if (qrType == 'top_up_refund') {
      Get.find<TopUpRefundController>().refund(
        type: 'QrPromptPay',
        accountName: accountName,
        accountNo: accountNo,
        bankCode: bankCode,
      );
    } else if (qrType == 'order_refund') {
      Get.find<OrderRefundController>().refundOrder(
        type: 'QrPromptPay',
        accountName: accountName,
        accountNo: accountNo,
        bankCode: bankCode,
      );
    } else if (qrType == 'reReturnOrder') {
      Get.find<OrderReRefundController>().qrReReturnOrder(
        bankCode,
        accountName,
        accountNo,
      );
    } else if (qrType == 'top_up_re_return') {
      Get.find<TopUpReRefundController>().qrReReturnOrder(
        accountName,
        accountNo,
        bankCode,
      );
    }
  }

  void onConfirm({required String qrType}) {
    // 确认操作
    if (isEditMode == true) {
      // 编辑操作
      toggleEditMode();
    } else {
      // 重新退款操作
      onReissue(qrType: qrType);
    }
  }

  @override
  void onClose() {
    accountName = '';
    accountNo = '';
    bankCode = '';
    super.onClose();
  }

  // 表单提交方法
  void submit() {
    // final companyName = companyNameController.text;
    // final taxNumber = taxNumberController.text;
    // ... 处理提交逻辑
  }
}
