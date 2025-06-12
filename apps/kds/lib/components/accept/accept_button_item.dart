import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kds/model/response/resp_production.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_ui/theme/theme.dart';

class AcceptButtonItem extends StatelessWidget {
  const AcceptButtonItem({super.key, required this.item, required this.onTap});

  final RespProductionItem item;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        onTap();
      },
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 260),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: CustomTheme.secondaryColor.shade700,
              width: 1,
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Obx(
                  () => Text(
                    item.localeName.translate,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: CustomTheme.secondaryColor.shade200,
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ),
              SizedBox(width: 16),
              Text(
                'X${item.num}',
                style: TextStyle(
                  fontSize: 18.0,
                  color: CustomTheme.secondaryColor.shade200,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
