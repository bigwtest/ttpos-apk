import 'package:assistant/components/cashier/cashier_list_item.dart';
import 'package:assistant/model/response/cashier/cashier_info.dart';
import 'package:flutter/material.dart';
import 'package:ttpos_ui/components/tt_empty/tt_empty.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class CashierList extends StatelessWidget {
  final int uuid;
  final bool isLoading;
  final List<ResponseCashierInfo> list;
  final Function(ResponseCashierInfo val)? onTap;

  const CashierList({
    super.key,
    this.uuid = 0,
    this.isLoading = false,
    this.list = const [],
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210.0.scaleHeight,
      child: Stack(
        children: [
          list.isNotEmpty
              ? GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                    mainAxisExtent: 94.0.scaleHeight,
                  ),
                  itemCount: list.length,
                  itemBuilder: (_, index) {
                    final item = list[index];
                    return CashierListItem(
                      isActive: uuid == item.cashierUuid,
                      detail: item,
                      onTap: onTap,
                    );
                  },
                )
              : !isLoading
                  ? TtEmpty(
                      imgWidth: 120.0,
                    )
                  : SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                    ),
          if (isLoading)
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      8.0,
                    ),
                  ),
                  color: CustomTheme.greyColor.shade500.withAlpha(10),
                ),
                child: Center(
                  child: SizedBox(
                    width: 32.0,
                    height: 32.0,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
