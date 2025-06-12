import 'package:pos/model/view/accept/accept_detail_info.dart';
import 'package:pos/model/view/accept/accept_log_item.dart';
import 'package:pos/model/view/accept/accept_product_item.dart';

class AcceptDetailViewModel {
  final AcceptDetailInfoViewModel detailInfo;
  final List<AcceptProductItemViewModel> newProducts;
  final List<AcceptProductItemViewModel> takeProducts;
  final List<AcceptLogItemViewModel> logs;

  AcceptDetailViewModel({
    required this.detailInfo,
    this.newProducts = const [],
    this.takeProducts = const [],
    this.logs = const [],
  });
}
