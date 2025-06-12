import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/common/dialog/update/update_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class UpdateDialogView<T> extends StatelessWidget {
  UpdateDialogView({super.key});

  final UpdateController updateController = Get.find<UpdateController>();
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 550.0.scaleWidth,
        maxHeight: 500.0.scaleHeight,
      ),
      child: Container(
        padding: EdgeInsets.all(24.0.scalePadding),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text(
                  '更新'.tr,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6.0.scalePadding),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.0.scalePadding, vertical: 2.0.scalePadding),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(color: Colors.red),
                    ),
                    child: Text(
                      'NEW',
                      style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w400, color: Colors.red),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0.scaleHeight),
            Row(
              children: [
                Text('版本号'.tr, style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400)),
                Padding(
                  padding: EdgeInsets.only(left: 20.0.scalePadding),
                  child: Text(
                    'v${updateController.version.isNotEmpty ? updateController.version : '2.0.0'}',
                    style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.0.scaleHeight),
            Row(
              children: [
                Text('更新内容'.tr, style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400)),
              ],
            ),
            SizedBox(height: 8.0.scaleHeight),
            Flexible(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: Color.fromARGB((0.15 * 255).round(), 36, 22, 11)),
                  color: CustomTheme.greyColor.shade100,
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(16.0.scalePadding),
                    child: Text(
                      updateController.updateContent.isNotEmpty ? updateController.updateContent : '暂无更新内容',
                      style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
                      softWrap: true,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0.scaleHeight),
            Row(
              children: [
                Obx(
                  () => updateController.isForceUpdate
                      ? const SizedBox() // 强制更新时不显示"暂不更新"按钮
                      : Expanded(
                          child: TextButton(
                            onPressed: () => Get.back(),
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                side: BorderSide(color: Color.fromARGB((0.15 * 255).round(), 36, 22, 11)),
                              ),
                              side: BorderSide(color: Color.fromARGB((0.15 * 255).round(), 36, 22, 11)),
                              padding: EdgeInsets.symmetric(horizontal: 32.0.scalePadding, vertical: 15.0.scalePadding),
                            ),
                            child: Text(
                              '暂不更新'.tr,
                              style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.black),
                            ),
                          ),
                        ),
                ),
                Obx(
                  () => updateController.isForceUpdate ? const SizedBox() : SizedBox(width: 16.0.scaleWidth),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () => updateController.launchURL(),
                    style: TextButton.styleFrom(
                      backgroundColor: CustomTheme.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 32.0.scalePadding, vertical: 15.0.scalePadding),
                    ),
                    child: Text(
                      '更新'.tr,
                      style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
