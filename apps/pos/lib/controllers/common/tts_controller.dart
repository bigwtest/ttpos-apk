// Dart imports:
import 'dart:async';
import 'dart:collection';
import 'dart:io';

// Package imports:
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:ttpos_i18n/controllers/language_controller.dart';
import 'package:ttpos_logger/controller.dart';
// Project imports:

class TTSController extends GetxController {
  final loggerController = Get.find<LoggerController>();
  Logger get logger => loggerController.logger;
  final languageController = Get.find<LanguageController>();

  late AudioPlayer audioPlayer;
  late FlutterTts flutterTts;
  final RxBool _isTTSAvailable = false.obs;
  bool get isTTSAvailable => _isTTSAvailable.value;
  set isTTSAvailable(bool value) => _isTTSAvailable.value = value;

  final Queue<String> speakQueue = Queue();
  final RxBool _isSpeaking = false.obs;
  bool get isSpeaking => _isSpeaking.value;
  set isSpeaking(bool value) => _isSpeaking.value = value;

  // 播放文本语音
  Future<bool> speak(String text) async {
    if (text.isEmpty || text == '""') {
      logger.warning('TTSController, text is empty');
      return false;
    }
    try {
      logger.info('Starting to speak: $text');

      // 设置语言
      final language = _getTTSLanguageCode(languageController.languageCurrent);
      logger.info('Setting TTS language to: $language');
      final setLanguageResult = await flutterTts.setLanguage(language);
      logger.info('Set language result: $setLanguageResult');

      // 播放提示音
      logger.info('播放提示音...');
      await audioPlayer.play(AssetSource('media/call.mp3'));
      await audioPlayer.onPlayerComplete.first;

      // 开始语音合成
      logger.info('Starting TTS speak...');
      final result = await flutterTts.speak(text);
      logger.info('TTS speak result: $result');

      if (result != 1) {
        logger.warning('TTSController, speak failed');
        return false;
      }

      // 等待语音完成
      await flutterTts.awaitSpeakCompletion(true);
      logger.info('TTS speak completed');

      await Future.delayed(const Duration(milliseconds: 1000));
      return true;
    } catch (e, stackTrace) {
      logger.severe('TTS speak error:', e, stackTrace);

      await audioPlayer.play(AssetSource('media/call.mp3'));
      await audioPlayer.onPlayerComplete.first;
      return false;
    }
  }

  // 获取 TTS 支持的语言代码
  String _getTTSLanguageCode(String language) {
    logger.info('Getting TTS language code for: $language');
    switch (language.toLowerCase()) {
      case 'en':
        return 'en-US';
      case 'zh':
      case 'zhtw':
        return 'zh-CN';
      case 'ja':
        return 'ja-JP';
      case 'ko':
        return 'ko-KR';
      case 'th':
        return 'th-TH';
      case 'tr':
        return 'tr-TR';
      case 'de':
        return 'de-DE';
      default:
        return 'en-US';
    }
  }

  // 停止语音播放
  Future<void> stop() async {
    await flutterTts.stop();
  }

  Future<void> processSpeakQueue() async {
    if (isSpeaking) return;
    isSpeaking = true;

    // 设置超时处理
    Timer? timeoutTimer;
    timeoutTimer = Timer(const Duration(seconds: 10), () {
      logger.warning('TTS queue processing timeout');
      isSpeaking = false;
      speakQueue.clear();
      timeoutTimer?.cancel();
    });

    while (speakQueue.isNotEmpty) {
      final text = speakQueue.removeFirst();
      final success = await speak(text);
      if (!success) {
        logger.warning('TTSController, failed to speak: $text');
        break;
      }
    }

    timeoutTimer.cancel();
    isSpeaking = false;
  }

  Future<bool> addTextToSpeakQueue(String text) async {
    try {
      audioPlayer = AudioPlayer();
      audioPlayer.setReleaseMode(ReleaseMode.stop);
      flutterTts = FlutterTts();
      if (Platform.isIOS) {
        logger.info('iOS platform detected, setting shared instance...');
        await flutterTts.setSharedInstance(true);
      }
      await Future.delayed(const Duration(milliseconds: 500));
      final engines = await flutterTts.getEngines;
      isTTSAvailable = engines.isNotEmpty;
      logger.warning('TTSController available $isTTSAvailable');

      if (isTTSAvailable == false) {
        logger.warning('TTSController available $isTTSAvailable');

        // audioPlayer = AudioPlayer();
        audioPlayer.setReleaseMode(ReleaseMode.stop);
        await audioPlayer.play(AssetSource('media/call.mp3'));
        await audioPlayer.onPlayerComplete.first;
        return Future.value(false);
      }
      speakQueue.add(text);
      // speak(text);
      processSpeakQueue();
      return Future.value(true);
    } catch (e) {
      logger.severe(e);
      return Future.value(false);
    }
  }

  @override
  void onInit() async {
    super.onInit();
  }

  @override
  void onClose() async {
    speakQueue.clear();
    await audioPlayer.dispose();
    await flutterTts.stop();

    super.onClose();
  }
}
