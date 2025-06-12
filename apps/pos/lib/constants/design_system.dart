// ignore_for_file: constant_identifier_names

/// 设计系统常量
class DesignSystem {
  /// 设计稿基准宽度
  static const DESIGN_WIDTH = 1920.0;

  /// 设计稿基准高度
  static const DESIGN_HEIGHT = 1080.0;

  /// 获取宽度缩放比例
  static double getWidthScale(double screenWidth) {
    return screenWidth / DESIGN_WIDTH;
  }

  /// 获取高度缩放比例
  static double getHeightScale(double screenHeight) {
    return screenHeight / DESIGN_HEIGHT;
  }
}
