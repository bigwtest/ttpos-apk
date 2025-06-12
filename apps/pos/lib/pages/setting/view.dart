// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
// Project imports:
import 'package:pos/components/setting/button_nav.dart';
import 'package:pos/components/setting/setting_form.dart';
import 'package:ttpos_ui/theme/theme.dart';

class SettingView extends StatelessWidget {
  SettingView({super.key});
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      child: FormBuilder(
        key: _formKey,
        child: Flex(
          direction: Axis.vertical,
          children: [
            Expanded(
              child: Flex(
                direction: Axis.vertical,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 16.0, 0, 16.0),
                    child: Row(
                      children: [
                        Container(
                          width: 4.0,
                          height: 20.0,
                          decoration: BoxDecoration(
                            color: CustomTheme.primaryColor.shade600,
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          ),
                        ),
                        const SizedBox(width: 16.0),
                        Text(
                          '系统设置'.tr,
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                            color: CustomTheme.secondaryColor.shade600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        SettingForm(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: CustomTheme.secondaryColor.shade700,
            ),
            ButtonNav(),
          ],
        ),
      ),
    );
  }
}
