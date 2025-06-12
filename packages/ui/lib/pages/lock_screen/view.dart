// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/components/keyboard.dart';
import 'package:ttpos_ui/components/language_select.dart';
import 'package:ttpos_ui/components/tt_input/tt_input.dart';
import 'package:ttpos_ui/pages/lock_screen/controller.dart';
import 'package:ttpos_ui/theme/theme.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class LockScreenView extends StatefulWidget {
  const LockScreenView({
    super.key,
    this.appName = 'TTPOS',
    required this.onSubmit,
  });

  final Future<bool> Function(String password) onSubmit;
  final String appName;

  @override
  State<LockScreenView> createState() => _LockScreenViewState();
}

class _LockScreenViewState extends State<LockScreenView> {
  @override
  void dispose() {
    if (Get.isRegistered<UILockScreenController>()) {
      Get.delete<UILockScreenController>();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormBuilderState>();
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(
              'packages/ttpos_ui/assets/images/login_bg.png',
              fit: BoxFit.fill,
              width: 720.0,
              height: 420.0,
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 56.0,
                  vertical: 64.0,
                ),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: SizedBox(
                  width: 720.0,
                  child: GetBuilder<UILockScreenController>(
                    init: UILockScreenController(),
                    builder: (controller) {
                      return Row(
                        children: [
                          SizedBox(
                            width: 300.0,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Text(
                                    'TTPOS · ${widget.appName.tr}',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: CustomTheme.primaryColor.shade600,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                      height: 1.20,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 24.0),
                                SizedBox(
                                  width: 300.0,
                                  child: Text(
                                    '系统已锁定，请输入锁屏密码解锁'.tr,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: CustomTheme.secondaryColor,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      height: 1.50,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 24.0),
                                FormBuilder(
                                  key: formKey,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      // 密码输入框
                                      Obx(
                                        () => TtInput(
                                          height: 40.0.scaleHeight,
                                          value: controller.password,
                                          hintText: '请输入锁屏密码'.tr,
                                          obscureText: true,
                                          prefixIcon: const Icon(Iconfont.lock),
                                          onChanged: controller.onPasswordChanged,
                                          readOnly: true,
                                          useFocusedBorderAsEnabled: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 16.0),
                                Obx(
                                  () => TextButton(
                                    onPressed: (!controller.isSubmittable || controller.isSubmitting)
                                        ? null
                                        : () => controller.onSubmit(onSubmit: widget.onSubmit),
                                    style: TextButton.styleFrom(
                                      backgroundColor: !controller.isSubmittable
                                          ? CustomTheme.greyColor.shade300
                                          : CustomTheme.primaryColor,
                                      minimumSize: Size(300.0, 40.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                      ),
                                      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                                    ),
                                    child: controller.isSubmitting
                                        ? SizedBox(
                                            width: 16.0,
                                            height: 16.0,
                                            child: CircularProgressIndicator(
                                              strokeWidth: 2,
                                              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                                            ),
                                          )
                                        : Text(
                                            '确定'.tr,
                                            style: TextStyle(
                                              color: CustomTheme.secondaryColor,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w600,
                                              height: 1.44,
                                            ),
                                          ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 24.0),
                          Expanded(
                            child: SizedBox(
                              height: 280.0,
                              child: Obx(
                                () => Keyboard(
                                  padding: EdgeInsets.all(16.0),
                                  showConfirmButton: false,
                                  showFunctionButtons: true,
                                  showExitButton: false,
                                  showDot: false,
                                  onNumberTap: controller.isSubmitting ? null : controller.onNumberTap,
                                  onClearTap: controller.isSubmitting ? null : controller.onClearTap,
                                  onConfirmTap: (!controller.isSubmittable || controller.isSubmitting)
                                      ? null
                                      : () => controller.onSubmit(onSubmit: widget.onSubmit),
                                  isConfirmLoading: controller.isSubmitting,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          ),

          // 语言选择
          Positioned(
            left: 0,
            right: 0,
            bottom: 8.0,
            child: LanguageSelect(),
          ),
        ],
      ),
      backgroundColor: const Color.fromRGBO(255, 246, 222, 1),
    );
  }
}
