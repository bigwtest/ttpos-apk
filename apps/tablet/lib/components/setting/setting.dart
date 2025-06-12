import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:tablet/components/setting/setting_controller.dart';
import 'package:tablet/components/setting/setting_input.dart';
import 'package:tablet/components/setting/setting_item.dart';
import 'package:tablet/components/setting/setting_select.dart';
import 'package:tablet/controllers/base/main_controller.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_ui/components/switch/switch_components.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';
import 'package:uuid/uuid.dart';

class HeadSetting extends StatefulWidget {
  const HeadSetting({super.key});

  @override
  State<StatefulWidget> createState() => _HeadSettingState();
}

class _HeadSettingState extends State<HeadSetting> {
  final FocusNode _remarkFocusNode = FocusNode();
  final ScrollController _scrollController = ScrollController();
  final RxBool isRemarkFocus = false.obs;
  final baseInfoController = Get.find<BaseInfoController>();

  // 控制器实例
  late final SettingController controller;
  final String tag = const Uuid().v4();

  @override
  void initState() {
    super.initState();
    // 初始化控制器
    try {
      controller = Get.find<SettingController>(tag: tag);
    } catch (e) {
      controller = Get.put(SettingController(), tag: tag);
    }

    _remarkFocusNode.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    debugPrint('onFocusChange: ${_remarkFocusNode.hasFocus}');

    isRemarkFocus.value = _remarkFocusNode.hasFocus;
    if (_remarkFocusNode.hasFocus) {
      // 延迟滚动以确保布局已完成
      Future.delayed(const Duration(milliseconds: 300), () {
        if (_scrollController.hasClients) {
          _scrollController.animateTo(
            _scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
          );
        }
      });
    }
  }

  @override
  void dispose() {
    _remarkFocusNode.removeListener(_onFocusChange);
    // _remarkFocusNode.dispose();
    _scrollController.dispose();

    // 销毁控制器
    if (Get.isRegistered<SettingController>(tag: tag)) {
      Get.delete<SettingController>(tag: tag);
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingController>(
      builder: (controller) {
        return Material(
          type: MaterialType.transparency,
          child: Container(
            margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Container(
              width: 550.0.scaleWidth,
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.8,
              ),
              clipBehavior: Clip.antiAlias,
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '设置'.tr,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: CustomTheme.secondaryColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Flexible(
                    child: SingleChildScrollView(
                      controller: _scrollController,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        spacing: 10.0,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SettingItem(
                            labelText: '当前登录'.tr,
                            nameText: baseInfoController.data.value?.realName ?? '',
                            btnText: '退出'.tr,
                            onBtnTap: controller.handleLogout,
                          ),
                          FutureBuilder<PackageInfo>(
                            future: PackageInfo.fromPlatform(),
                            builder: (context, snapshot) {
                              return SettingItem(
                                labelText: '客户端版本'.tr,
                                nameText: snapshot.hasData ? 'v${snapshot.data!.version}' : 'v2.0.0',
                                btnText: '检查新版本'.tr,
                                onBtnTap: controller.handleCheckVersion,
                              );
                            },
                          ),
                          SettingItem(
                            labelText: '服务端版本'.tr,
                            nameText: 'v${baseInfoController.data.value?.systemVersion ?? '0.0.0'}',
                          ),
                          Row(
                            children: [
                              Obx(
                                () => SwitchComponents(
                                  label: '声音提醒'.tr,
                                  isSwitch: controller.voiceReminder,
                                  isHorizontal: true,
                                  onSwitchChanged: (val) {
                                    controller.voiceReminder = val;
                                  },
                                ),
                              ),
                            ],
                          ),
                          FutureBuilder(
                            future: DeviceId.getId(),
                            builder: (context, snapshot) {
                              return SettingInput(
                                labelText: '当前机器ID'.tr,
                                hintText: '当前机器ID'.tr,
                                value: snapshot.data ?? '',
                                isDisabled: true,
                              );
                            },
                          ),
                          Obx(
                            () => SettingInput(
                              labelText: '机器备注'.tr,
                              hintText: '机器备注'.tr,
                              value: controller.deviceRemark,
                              maxLength: 100,
                              onChanged: (val) {
                                controller.deviceRemark = val;
                              },
                              focusNode: _remarkFocusNode,
                            ),
                          ),
                          Obx(
                            () => SettingSelect(
                              labelText: '字体大小'.tr,
                              value: controller.currentFontSize,
                              selectList: controller.fontSizeList,
                              onChanged: (val) {
                                if (val != null && val.isNotEmpty) {
                                  controller.currentFontSize = val['value'];
                                }
                              },
                            ),
                          ),
                          Obx(
                            () => SettingItem(
                              labelText: '当前桌位'.tr,
                              nameText: controller.currentTable?.deskNo ?? '',
                              btnText: '查找桌位'.tr,
                              onBtnTap: controller.handleChangeTable,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    spacing: 10.0,
                    children: [
                      Expanded(
                        child: TtButton(
                          text: '清除缓存'.tr,
                          buttonType: ActionButtonType.normal,
                          height: 36.0.scaleHeight,
                          fontWeight: FontWeight.w600,
                          onTap: controller.handleClearCache,
                        ),
                      ),
                      Expanded(
                        child: TtButton(
                          text: '重置'.tr,
                          buttonType: ActionButtonType.normal,
                          height: 36.0.scaleHeight,
                          fontWeight: FontWeight.w600,
                          onTap: controller.handleInitAndReset,
                        ),
                      ),
                      Expanded(
                        child: TtButton(
                          text: '保存'.tr,
                          height: 36.0.scaleHeight,
                          fontWeight: FontWeight.w600,
                          onTap: controller.handleSaveSetting,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
