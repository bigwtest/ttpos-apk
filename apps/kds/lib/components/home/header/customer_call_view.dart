import 'package:flutter/material.dart';
import 'package:kds/api/customer_call/customer_call_api.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/customer_call/count/customer_call_count_view.dart';

class CustomerCallIcon extends StatelessWidget {
  const CustomerCallIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomerCallCountView(
      onUnprocessedCallCount: () => CustomerCallAPI().getUnprocessedCallCount(),
      onUnprocessedCallList: (data) => CustomerCallAPI().getUnprocessedCallList(data),
      onUnprocessedCallFinish: (uuid, {options}) => CustomerCallAPI().callFinish(
        uuid,
        options: ExtraRequestOptions(
          showFailToast: true,
          showSuccessToast: true,
        ),
      ),
    );
  }
}
