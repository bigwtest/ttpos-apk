import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kds/components/home/dialog/setting_input.dart';
import 'package:kds/components/home/dialog/setting_item.dart';
import 'package:kds/components/home/dialog/setting_select.dart';
import 'package:kds/controllers/base/main_controller.dart';
import 'package:kds/controllers/home/setting_controller.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_ui/components/switch/switch_components.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class HeadSetting extends StatefulWidget {
  const HeadSetting({super.key});

  @override
  State<StatefulWidget> createState() => _HeadSettingState();
}

class _HeadSettingState extends State<HeadSetting> {
  final ScrollController _scrollController = ScrollController();
  final FocusNode _remarkFocusNode = FocusNode();

  final baseInfoController = Get.find<BaseInfoController>();

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  @override
  void initState() {
    super.initState();

    // 确保在对话框完全渲染后设置延迟监听
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // 给对话框渲染和布局一些时间
      Future.delayed(Duration(milliseconds: 300), () {
        _remarkFocusNode.addListener(() {
          if (_remarkFocusNode.hasFocus) {
            // 确保在获得焦点时有足够的时间完成布局
            Future.delayed(Duration(milliseconds: 300), _scrollToBottom);
          }
        });
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _remarkFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SettingController(),
      dispose: (_) => Get.delete<SettingController>(),
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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                                nameText: snapshot.hasData ? 'v${snapshot.data!.version}' : '0.0.0',
                                btnText: '检查新版本'.tr,
                                onBtnTap: controller.handleCheckVersion,
                              );
                            },
                          ),
                          SettingItem(
                            labelText: '服务端版本'.tr,
                            nameText: 'v${baseInfoController.data.value?.systemVersion ?? '0.0.0'}',
                          ),
                          Obx(
                            () => SwitchComponents(
                              label: '顾客呼叫提醒'.tr,
                              labelFontSize: 14.0,
                              isSwitch: controller.callReminder,
                              isHorizontal: true,
                              onSwitchChanged: (val) {
                                controller.callReminder = val;
                              },
                            ),
                          ),
                          Obx(
                            () => SwitchComponents(
                              label: '来菜提醒'.tr,
                              labelFontSize: 14.0,
                              isSwitch: controller.foodArrivalReminder,
                              isHorizontal: true,
                              onSwitchChanged: (val) {
                                controller.foodArrivalReminder = val;
                              },
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
                            () => SettingSelect(
                              labelText: '打印档口'.tr,
                              value: controller.productPrinterUuid,
                              selectList: controller.printCounterList,
                              isLabelIcon: true,
                              onChanged: (val) {
                                if (val != null && val.isNotEmpty) {
                                  controller.productPrinterUuid = val['value'];
                                }
                              },
                            ),
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
                              focusNode: _remarkFocusNode,
                              maxLength: 100,
                              onChanged: (val) {
                                controller.deviceRemark = val;
                              },
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
                          text: '重置'.tr,
                          buttonType: ActionButtonType.normal,
                          fontWeight: FontWeight.w600,
                          onTap: controller.handleInitAndReset,
                        ),
                      ),
                      Expanded(
                        child: TtButton(
                          text: '保存'.tr,
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
