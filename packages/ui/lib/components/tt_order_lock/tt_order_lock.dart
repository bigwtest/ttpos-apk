// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class TtOrderLock extends StatefulWidget {
  final String? title;
  final bool isShowLockBtn;
  final Future<bool> Function()? onLockTap; // 点击事件

  const TtOrderLock({
    super.key,
    this.title,
    this.isShowLockBtn = false,
    this.onLockTap,
  });

  @override
  State<TtOrderLock> createState() => _TtOrderLockState();
}

class _TtOrderLockState extends State<TtOrderLock> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CustomTheme.secondaryColor.shade100,
        borderRadius: BorderRadius.all(
          Radius.circular(
            8.0,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Iconfont.lock,
            size: 32.0.scaleWidth,
            color: Colors.white,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            widget.title ?? '订单已锁定'.tr,
            style: TextStyle(
              color: Colors.white,
              fontSize: 13.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          if (widget.isShowLockBtn) ...[
            SizedBox(
              height: 16.0,
            ),
            TtButton(
              isLoading: _isLoading,
              text: '解锁'.tr,
              onTap: () async {
                if (_isLoading) return;
                if (widget.onLockTap == null) return;
                try {
                  setState(() {
                    _isLoading = true;
                  });
                  await widget.onLockTap?.call();
                } finally {
                  setState(() {
                    _isLoading = true;
                  });
                }
              },
            ),
          ],
        ],
      ),
    );
  }
}
