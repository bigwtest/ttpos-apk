// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Package imports:
import 'package:pagination_flutter/pagination.dart';
import 'package:ttpos_ui/theme/theme.dart';

class NumberPagination extends StatelessWidget {
  final int? page;
  final int? lastPage;
  final int? total;
  final Function(int)? onPageChanged;
  const NumberPagination({
    super.key,
    this.page = 1,
    this.lastPage = 1,
    this.total = 0,
    this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text('${'共'.tr} $total ${'条'.tr}'),
          const SizedBox(width: 10),
          Pagination(
            numOfPages: lastPage!,
            selectedPage: page!,
            pagesVisible: 7,
            spacing: 0,
            onPageChanged: (page) {
              if (onPageChanged != null) {
                onPageChanged!(page);
              }
            },
            nextIcon: const Icon(
              Icons.arrow_forward_ios,
              size: 12,
            ),
            previousIcon: const Icon(
              Icons.arrow_back_ios_sharp,
              size: 12,
            ),
            activeTextStyle: const TextStyle(
              color: Colors.white,
              fontSize: 12.0,
              fontWeight: FontWeight.w700,
            ),
            activeBtnStyle: ButtonStyle(
              padding: WidgetStateProperty.all(
                const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
              ),
              backgroundColor: WidgetStateProperty.all(CustomTheme.primaryColor.shade600),
              minimumSize: WidgetStateProperty.all(const Size(40, 40)),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            inactiveBtnStyle: ButtonStyle(
              minimumSize: WidgetStateProperty.all(const Size(40, 40)),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ),
            inactiveTextStyle: const TextStyle(
              fontSize: 12.0,
              color: CustomTheme.secondaryColor,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
