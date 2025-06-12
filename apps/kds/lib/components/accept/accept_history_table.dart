import 'package:flutter/material.dart';
import 'package:kds/components/accept/accept_history_item.dart';
import 'package:kds/model/response/resp_history_list.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_ui/theme/theme.dart';

class AcceptHistoryTable extends StatelessWidget {
  const AcceptHistoryTable({
    super.key,
    this.item,
    required this.getList,
  });

  final RespProductionGroup? item;
  final Function() getList;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 44,
            decoration: BoxDecoration(
              color: CustomTheme.greyColor.shade100,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                item?.localeName.translate ?? '',
                style: TextStyle(
                  fontSize: 20.0,
                  color: CustomTheme.greyColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          if (item?.productList.list.isNotEmpty ?? false)
            for (int i = 0; i < item!.productList.list.length; i++)
              AcceptHistoryItem(
                item: item!.productList.list[i],
                isborder: i != item!.productList.list.length - 1,
                getList: () {
                  getList();
                },
              ),
        ],
      ),
    );
  }
}
