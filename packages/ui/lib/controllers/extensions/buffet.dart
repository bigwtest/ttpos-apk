part of 'package:ttpos_ui/controllers/config_controller.dart';

extension BuffetTimerColorExtension on int {
  Color get buffetTimerColor {
    try {
      final ConfigController controller = Get.find<ConfigController>();
      final BuffetOption buffetOption = controller.buffetOption.value;

      final isRemainBuffetCountdownColor = buffetOption.isRemainBuffetCountdownColor;
      if (!isRemainBuffetCountdownColor) {
        return CustomTheme.secondaryColor.shade500;
      }

      if (this <= 10 * 60) {
        return buffetOption.buffetCountdownLeft10minColor;
      }

      if (this <= 20 * 60) {
        return buffetOption.buffetCountdownLeft20minColor;
      }

      return CustomTheme.secondaryColor.shade500;
    } catch (error, stackTrace) {
      debugPrint("buffetTimerColor error: [$this], $error\n$stackTrace");
      return CustomTheme.secondaryColor.shade500;
    }
  }
}
