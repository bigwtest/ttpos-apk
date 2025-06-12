// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';
// Project imports:
import 'package:pos/components/setting/components/setting_input.dart';
import 'package:pos/components/setting/components/setting_select.dart';
import 'package:pos/controllers/setting/setting_controller.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_i18n/controllers/language_controller.dart';
import 'package:ttpos_i18n/controllers/language_second_controller.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/components/common/dialog/update/update_controller.dart';
import 'package:ttpos_ui/components/switch/switch_components.dart';
import 'package:ttpos_ui/controllers/card_style_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';
// Controllers

class SettingForm extends StatefulWidget {
  const SettingForm({super.key});

  @override
  SettingFormState createState() => SettingFormState();
}

class SettingFormState extends State<SettingForm> with TickerProviderStateMixin {
  late final AnimationController _mainLangRefreshController;
  late final AnimationController _secondLangRefreshController;
  //
  final languageController = Get.find<LanguageController>();
  final languageSecondController = Get.find<LanguageSecondController>();
  final fontSizeController = Get.find<FontSizeController>();
  final cardStyleController = Get.find<CardStyleController>();
  //
  final settingController = Get.find<SettingController>();
  final updateController = Get.put(UpdateController());

  final FocusNode _remarkFocusNode = FocusNode();

  final isRemarkFocus = false.obs;

  final GlobalKey _remarkKey = GlobalKey();
  final RxDouble _offsetY = 0.0.obs;

  @override
  void initState() {
    super.initState();
    _remarkFocusNode.addListener(_onFocusChange);

    _mainLangRefreshController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    _secondLangRefreshController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
  }

  void _onFocusChange() {
    if (_remarkFocusNode.hasFocus) {
      isRemarkFocus.value = true;
      Future.delayed(const Duration(milliseconds: 100), () {
        if (!mounted) return; // 添加 mounted 检查
        final RenderBox? renderBox = _remarkKey.currentContext?.findRenderObject() as RenderBox?;
        if (renderBox != null) {
          final position = renderBox.localToGlobal(Offset.zero);
          final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
          final screenHeight = MediaQuery.of(context).size.height;
          final inputBottom = position.dy + renderBox.size.height;
          final visibleBottom = screenHeight - keyboardHeight - 100; // 安全距离

          // 计算需要上移的距离
          if (inputBottom > visibleBottom) {
            // 只上移被键盘遮挡的部分，再加上一点安全距离
            _offsetY.value = inputBottom - visibleBottom + 50;
          } else {
            // 输入框没有被遮挡，不需要上移
            _offsetY.value = 0;
          }
        }
      });
    } else {
      isRemarkFocus.value = false;
      _offsetY.value = 0;
    }
  }

  @override
  void dispose() {
    _remarkFocusNode.removeListener(_onFocusChange);
    _mainLangRefreshController.dispose();
    _secondLangRefreshController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        transform: Matrix4.translationValues(
          0,
          isRemarkFocus.value ? -_offsetY.value : 0,
          0,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16.0,
            children: [
              SwitchComponents(
                label: '平板显示售罄商品'.tr,
                isSwitch: settingController.isTabletShowSoldOut,
                onSwitchChanged: (val) {
                  settingController.isTabletShowSoldOut = val;
                },
              ),
              SwitchComponents(
                label: '扫码点餐显示售罄商品'.tr,
                isSwitch: settingController.isScanShowSoldOut,
                onSwitchChanged: (val) {
                  settingController.isScanShowSoldOut = val;
                },
              ),
              SwitchComponents(
                label: '电子菜单显示售罄商品'.tr,
                isSwitch: settingController.isMenuShowSoldOut,
                onSwitchChanged: (val) {
                  settingController.isMenuShowSoldOut = val;
                },
              ),
              SwitchComponents(
                label: '点餐助手显示售罄商品'.tr,
                isSwitch: settingController.isAssistantShowSoldOut,
                onSwitchChanged: (val) {
                  settingController.isAssistantShowSoldOut = val;
                },
              ),
              Obx(
                () => Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SettingSelect(
                      hintText: '请选择'.tr,
                      label: '主屏语言'.tr,
                      clearIcon: false,
                      value: settingController.languageCurrent,
                      selectList: languageController.languageList.map((item) {
                        return {
                          'value': item.name,
                          'label': item.value,
                        };
                      }).toList(),
                      onChanged: (val) {
                        if (val != null && val.isNotEmpty) {
                          settingController.languageCurrent = val['value'];
                        }
                      },
                    ),
                    SizedBox(
                      width: 40.0.scaleWidth,
                      height: 40.0.scaleHeight,
                      child: IconButton(
                        icon: RotationTransition(
                          turns: _mainLangRefreshController,
                          child: const Icon(Iconfont.refresh),
                        ),
                        color: CustomTheme.secondaryColor,
                        onPressed: () async {
                          _mainLangRefreshController.repeat();
                          await settingController.getLanguage();
                          _mainLangRefreshController.stop();
                          _mainLangRefreshController.reset();
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Obx(
                () => Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SettingSelect(
                      hintText: '请选择'.tr,
                      label: '副屏语言'.tr,
                      clearIcon: false,
                      value: settingController.languageSecond,
                      selectList: languageController.languageList.map((item) {
                        return {
                          'value': item.name,
                          'label': item.value,
                        };
                      }).toList(),
                      onChanged: (val) {
                        if (val != null && val.isNotEmpty) {
                          settingController.languageSecond = val['value'];
                        }
                      },
                    ),
                    SizedBox(
                      width: 40.0.scaleWidth,
                      height: 40.0.scaleHeight,
                      child: IconButton(
                        icon: RotationTransition(
                          turns: _secondLangRefreshController,
                          child: const Icon(Iconfont.refresh),
                        ),
                        color: CustomTheme.secondaryColor,
                        onPressed: () async {
                          _secondLangRefreshController.repeat();
                          await settingController.getLanguage();
                          _secondLangRefreshController.stop();
                          _secondLangRefreshController.reset();
                        },
                      ),
                    ),
                  ],
                ),
              ),
              FutureBuilder(
                future: DeviceId.getId(),
                builder: (context, snapshot) {
                  return SettingInput(
                    label: '当前机器ID'.tr,
                    isDisabled: true,
                    value: snapshot.data ?? '',
                  );
                },
              ),
              Obx(
                () => SettingInput(
                  key: _remarkKey,
                  label: '机器备注（非必填）'.tr,
                  value: settingController.deviceRemark,
                  maxLength: 100,
                  onChanged: (val) {
                    settingController.deviceRemark = val;
                  },
                  focusNode: _remarkFocusNode,
                ),
              ),
              Obx(
                () => SettingSelect(
                  hintText: '请选择'.tr,
                  label: '字体大小'.tr,
                  clearIcon: false,
                  value: settingController.currentFontSize,
                  selectList: fontSizeController.fontSizeList,
                  onChanged: (val) {
                    if (val != null && val.isNotEmpty) {
                      settingController.currentFontSize = val['value'];
                    }
                  },
                ),
              ),
              Obx(
                () => SettingSelect(
                  hintText: '请选择'.tr,
                  label: '菜品卡片样式'.tr,
                  clearIcon: false,
                  value: settingController.currentCardStyle,
                  selectList: cardStyleController.cardStyleList,
                  onChanged: (val) {
                    if (val != null && val.isNotEmpty) {
                      settingController.currentCardStyle = val['value'];
                    }
                  },
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('客户端版本'.tr),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                        child: TextButton(
                          onPressed: () async {
                            final packageInfo = await PackageInfo.fromPlatform();
                            updateController.checkUpdate(
                              currentType: 'cashier',
                              currentVersion: packageInfo.version,
                            );
                          },
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 3),
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: Text('检查新版本'.tr),
                        ),
                      ),
                    ],
                  ),
                  FutureBuilder<PackageInfo>(
                    future: PackageInfo.fromPlatform(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Text("v${snapshot.data!.version}");
                      }
                      return const SizedBox();
                    },
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('服务端版本'.tr),
                  Obx(
                    () => Text(
                      'v${settingController.settingData?.serverVersion ?? '0.0.0'}',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
