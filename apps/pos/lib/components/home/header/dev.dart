import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/controllers/common/cash_box_controller.dart';
import 'package:pos/routers/name.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';

class DevInfo extends StatefulWidget {
  const DevInfo({super.key, this.child});

  final Widget? child;

  @override
  State<DevInfo> createState() => _DevInfoState();
}

class _DevInfoState extends State<DevInfo> {
  final RxList<int> tapList = <int>[].obs;
  final List<int> code = [2, 1, 1, 3];
  Timer? _clearTimer;

  void _checkCode() {
    debugPrint('tapList: $tapList');

    if (listEquals(tapList.toList(), code)) {
      _clearTimer?.cancel();
      Get.dialog(
        _DevInfoView(),
        barrierDismissible: false,
      ).then((_) {
        tapList.clear();
      });
      return;
    }

    if (tapList.length >= 4) {
      _clearTimer?.cancel();
      tapList.clear();
      return;
    }

    if (tapList.isNotEmpty) {
      _clearTimer?.cancel();
      _clearTimer = Timer(const Duration(seconds: 10), () {
        if (tapList.isNotEmpty) {
          tapList.clear();
        }
      });
    }
  }

  @override
  void dispose() {
    _clearTimer?.cancel();
    _clearTimer = null;
    tapList.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () {
        if (tapList.length >= 4) return;
        tapList.add(3);
        _checkCode();
      },
      onDoubleTap: () {
        if (tapList.length >= 4) return;
        tapList.add(2);
        _checkCode();
      },
      onTap: () {
        if (tapList.length >= 4) return;
        tapList.add(1);
        _checkCode();
      },
      child: widget.child,
    );
  }
}

class _DevInfoView extends StatelessWidget {
  final SharedPreferencesWithCache _storage = Get.find<SharedPreferencesWithCache>();
  final TokenController _tokenController = Get.find<TokenController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return AboutDialog(
        applicationName: 'TTPOS',
        applicationVersion: '2.0.0',
        applicationIcon: Image.asset('assets/images/logo.png'),
        applicationLegalese: 'Copyright © 2025 TTPOS. All rights reserved.',
        children: [
          Container(
            width: 160,
            padding: const EdgeInsets.all(16),
            child: InkWell(
              onLongPress: () async {
                await Future.wait(
                  [
                    _storage.clear(),
                  ],
                  eagerError: true,
                );
                Get.offAllNamed(RouteNames.login);
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText(
                      '接口地址: ${const String.fromEnvironment('API_BASE_URL', defaultValue: '未配置接口地址')}',
                      style: const TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    SelectableText(
                      'WebSocket地址: ${const String.fromEnvironment('WS_BASE_URL', defaultValue: '未配置WebSocket地址')}',
                      style: const TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    SelectableText(
                      '检测时区[ tz ]插件是否生效: ${1740139007.tz}',
                      style: const TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    SelectableText(
                      '检测货币[ primaryCurrency, secondaryCurrency ]插件是否生效: ${'100'.primaryCurrency} ${'100'.secondaryCurrency}',
                      style: const TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    FutureBuilder(
                      future: DeviceId.getId(),
                      builder: (context, snapshot) {
                        return SelectableText(
                          '检测设备ID[ DeviceId.getId() ]插件是否生效: ${snapshot.data}',
                          style: const TextStyle(
                            fontSize: 14.0,
                          ),
                        );
                      },
                    ),
                    FutureBuilder(
                      future: DeviceInfoUtils.getBrand(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return SelectableText(
                            '检测品牌[ DeviceInfoUtils.getBrand() ]插件是否生效: ${snapshot.data}',
                          );
                        }
                        return const Text('获取品牌信息失败');
                      },
                    ),
                    FutureBuilder(
                      future: DeviceInfoUtils.getSerialNumber(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return SelectableText(
                            '检测序列号[ DeviceInfoUtils.getSerialNumber() ]插件是否生效: ${snapshot.data}',
                          );
                        }
                        return const Text('获取序列号失败');
                      },
                    ),
                    SelectableText(
                      '检测Token[ _tokenController.token ]是否生效: ${_tokenController.token}',
                      style: const TextStyle(
                        fontSize: 10.0,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        CashBoxController.initScanner();
                      },
                      child: const Text('初始化扫码枪'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}
