// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/controllers/common/cash_box_controller.dart';
import 'package:pos/controllers/common/tts_controller.dart';

class CashBoxView extends StatelessWidget {
  CashBoxView({super.key});

  final TTSController ttsController = Get.find<TTSController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('收钱箱'),
          const SizedBox(height: 20),
          // 添加打开钱箱按钮
          TextButton(
            onPressed: () => CashBoxController.openCashBox(),
            child: const Text('打开钱箱'),
          ),
          TextButton(
            // onPressed: ttsController.isTTSAvailable ? () => ttsController.addTextToSpeakQueue("Table 合桌-443 Call waiter") : null,
            onPressed: () => ttsController.addTextToSpeakQueue("Table 合桌-443 Call waiter"),
            child: const Text('TTS播放: Table 合桌-443 Call waiter'),
          ),
          TextButton(
            onPressed: () => ttsController.addTextToSpeakQueue("テーブル番号 合桌-443 スタッフを呼ぶ"),
            child: const Text('TTS播放: テーブル番号 合桌-443 スタッフを呼ぶ'),
          ),
          TextButton(
            onPressed: () => ttsController.addTextToSpeakQueue("โต๊ะ 合桌-443 เรียกพนักงาน"),
            child: const Text('TTS播放:โต๊ะ 合桌-443 เรียกพนักงาน'),
          ),
          TextButton(
            onPressed: () => ttsController.addTextToSpeakQueue("桌位 合桌-443 呼叫服务员"),
            child: const Text('TTS播放: 桌位 合桌-443 呼叫服务员'),
          ),
          TextButton(
            onPressed: () => ttsController.addTextToSpeakQueue("테이블 번호 合桌-443 웨이터를 부르다"),
            child: const Text('TTS播放: 테이블 번호 合桌-443 웨이터를 부르다'),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () => Get.back(),
                child: const Text('关闭'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
