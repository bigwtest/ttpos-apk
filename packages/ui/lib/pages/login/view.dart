// Dart imports:
import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/components/language_select.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/components/tt_checkbox/tt_checkbox.dart';
import 'package:ttpos_ui/components/tt_input/tt_input.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/pages/login/controller.dart';
import 'package:ttpos_ui/pages/login/model.dart';
import 'package:ttpos_ui/theme/theme.dart';

class LoginView extends StatefulWidget {
  const LoginView({
    super.key,
    this.appName = 'TTPOS',
    required this.onSubmit,
    this.scaffoldKey,
    this.endDrawer,
    this.endDrawerEnableOpenDragGesture,
    this.onEndDrawerChanged,
  });

  final String appName;
  final Future<bool> Function(LoginForm) onSubmit;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  final Widget? endDrawer;
  final bool? endDrawerEnableOpenDragGesture;
  final Function(bool)? onEndDrawerChanged;

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  void dispose() {
    if (Get.isRegistered<UILoginController>()) {
      Get.delete<UILoginController>();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userInputGlobalKey = GlobalKey();
    final formKey = GlobalKey<FormBuilderState>();
    return Scaffold(
      key: widget.scaffoldKey,
      endDrawer: widget.endDrawer,
      endDrawerEnableOpenDragGesture: widget.endDrawerEnableOpenDragGesture ?? false,
      onEndDrawerChanged: widget.onEndDrawerChanged,
      body: Stack(
        children: [
          Positioned.fill(
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
              },
            ),
          ),
          // NOTE: 接口地址显示
          // Positioned(
          //   left: 0,
          //   right: 0,
          //   top: 8.0,
          //   child: Center(
          //     child: FutureBuilder<String?>(
          //       future: () async {
          //         return Future.value(const String.fromEnvironment('API_BASE_URL', defaultValue: '未配置接口地址'));
          //       }(),
          //       builder: (context, AsyncSnapshot<String?> snapshot) {
          //         return Text(
          //           snapshot.data ?? '',
          //           style: TextStyle(
          //             color: CustomTheme.greyColor,
          //             fontSize: 12.0,
          //           ),
          //         );
          //       },
          //     ),
          //   ),
          // ),
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
          // 语言选择
          Positioned(
            left: 0,
            right: 0,
            bottom: 8.0,
            child: LanguageSelect(),
          ),
          Center(
            child: SingleChildScrollView(
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  // 阻止点击事件传播到外层
                  FocusManager.instance.primaryFocus?.unfocus();
                },
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
                  child: GetBuilder<UILoginController>(
                    builder: (controller) {
                      return SizedBox(
                        width: 300.0.scaleWidth,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                            FormBuilder(
                              key: formKey,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 8.0,
                                children: [
                                  // 用户名输入框
                                  Obx(
                                    () {
                                      return TtInput(
                                        inputFieldKey: userInputGlobalKey,
                                        value: controller.username,
                                        hintText: '邮箱/手机号'.tr,
                                        onChanged: controller.onUsernameChanged,
                                        height: 40.0.scaleHeight,
                                        isShowDelete: true,
                                        prefixIcon: const Icon(Iconfont.user),
                                        suffix: controller.hasSavedUsers
                                            ? IconButton(
                                                onPressed: () {
                                                  controller.showUserSelector(context, userInputGlobalKey);
                                                },
                                                icon: Icon(
                                                  Iconfont.arrowDown,
                                                  color: CustomTheme.secondaryColor.shade600,
                                                  size: 12.0,
                                                ),
                                              )
                                            : null,
                                      );
                                    },
                                  ),
                                  // 密码输入框
                                  Obx(
                                    () => TtInput(
                                      value: controller.password,
                                      hintText: '登录密码'.tr,
                                      height: 40.0.scaleHeight,
                                      obscureText: true,
                                      prefixIcon: const Icon(Iconfont.lock),
                                      onChanged: controller.onPasswordChanged,
                                      isShowDelete: true,
                                    ),
                                  ),
                                  // 验证码输入框和验证码图片
                                  Row(
                                    spacing: 8.0,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Obx(
                                          () => TtInput(
                                            value: controller.captcha,
                                            height: 40.0.scaleHeight,
                                            hintText: '验证码'.tr,
                                            prefixIcon: const Icon(Iconfont.shieldTick),
                                            onChanged: controller.onCaptchaChanged,
                                            isShowDelete: true,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 96.0.scaleWidth,
                                        child: Obx(() {
                                          if (controller.isCaptchaLoading) {
                                            return Center(
                                              child: SizedBox(
                                                width: 16.0.scaleWidth,
                                                height: 16.0.scaleHeight,
                                                child: CircularProgressIndicator(strokeWidth: 2),
                                              ),
                                            );
                                          }

                                          // 显示 Base64 图片
                                          return GestureDetector(
                                            onTap: () {
                                              // 点击刷新验证码
                                              controller.getCaptcha();
                                            },
                                            child: controller.captchaImage.isEmpty
                                                ? Container(
                                                    width: 96.0.scaleWidth,
                                                    height: 40.0.scaleHeight,
                                                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                                                    child: Center(
                                                      child: Text(
                                                        '获取验证码'.tr,
                                                        maxLines: 1,
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                          overflow: TextOverflow.ellipsis,
                                                          color: CustomTheme.greyColor,
                                                          fontSize: 12.0,
                                                          fontWeight: FontWeight.w400,
                                                          height: 1.44,
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                : Image.memory(
                                                    base64Decode(
                                                      controller.captchaImage.split(',')[1],
                                                    ), // 解码 Base64
                                                    width: 96.0.scaleWidth,
                                                    height: 40.0.scaleHeight,
                                                    fit: BoxFit.fill,
                                                  ),
                                          );
                                        }),
                                      ),
                                    ],
                                  ),
                                  // 记住密码
                                  Obx(() {
                                    return SizedBox(
                                      height: 24.0,
                                      child: Row(
                                        spacing: 4.0,
                                        children: [
                                          TtCheckbox(
                                            isChecked: controller.rememberPassword,
                                            onChanged: controller.onRememberPasswordChanged,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              controller.onRememberPasswordChanged(
                                                !controller.rememberPassword,
                                              );
                                            },
                                            child: Text(
                                              '记住密码'.tr,
                                              style: TextStyle(
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w400,
                                                color: controller.rememberPassword
                                                    ? CustomTheme.secondaryColor
                                                    : CustomTheme.greyColor,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }),
                                ],
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Obx(
                              () => TtButton(
                                text: '登录'.tr,
                                onTap: (!controller.isSubmittable || controller.isSubmitting.value)
                                    ? null
                                    : () => controller.onSubmit(onSubmit: widget.onSubmit),
                                isDisabled: !controller.isSubmittable || controller.isSubmitting.value,
                                isLoading: controller.isSubmitting.value,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromRGBO(255, 246, 222, 1),
    );
  }
}
