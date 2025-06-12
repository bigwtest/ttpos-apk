import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/member/request/add_member.dart';
import 'package:ttpos_model/member/request/recharge.dart';
import 'package:ttpos_model/member/response/member.dart';
import 'package:ttpos_model/member/response/member_level.dart';
import 'package:ttpos_model/member/response/recharge.dart';
import 'package:ttpos_model/member/response/search_member.dart';
import 'package:ttpos_model/payment/request/qrcode.dart';
import 'package:ttpos_model/payment/response/qrcode.dart';

class MemberAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'MemberAPI');
  Logger get logger => _logger.logger;

  // 获取会员等级列表
  Future<List<ResponseMemberLevel>> getMemberLevelList({
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.memberGetMemberLevelList.cashierPath,
        requestOptions: options,
      );
      if (response.code.success) {
        if (response.data == null || (response.data as Map).isEmpty) {
          return [];
        }
        final result = await response.safeFromJsonList(
          ResponseMemberLevel.fromJson,
          response.data,
          modelName: 'ResponseMemberLevel',
          options: options,
          logger: logger,
        );
        return result?.list ?? [];
      }
      return [];
    } catch (error, stackTrace) {
      logger.severe('getMemberLevelList Error:', error, stackTrace);
      return [];
    }
  }

  // 新增会员
  Future<bool> createMember(
    RequestAddMember form, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.memberAddMember.cashierPath,
        data: form.toJson(),
        requestOptions: options,
      );
      return response.code.success;
    } catch (error, stackTrace) {
      logger.severe('createMember Error:', error, stackTrace);
      return false;
    }
  }

  // 模糊搜索会员列表
  Future<BaseList<SearchMember>?> searchMemberList(
    String keyword, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.memberSearchMember.cashierPath,
        queryParameters: {'keyword': keyword},
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJsonList(
          SearchMember.fromJson,
          response.data,
          modelName: 'SearchMember',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('searchMemberList Error:', error, stackTrace);
      return null;
    }
  }

  // 获取会员详情
  Future<Member?> getMemberDetail(
    int uuid, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.memberRechargeMember.cashierPath,
        queryParameters: {'uuid': uuid},
        requestOptions: options,
      );
      if (response.code.success) {
        if (response.data == null || (response.data as Map).isEmpty) {
          return null;
        }
        return await response.safeFromJson(
          Member.fromJson,
          response.data,
          modelName: 'Member',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getMemberDetail Error:', error, stackTrace);
      return null;
    }
  }

  // 获取进行中的充值订单
  Future<(bool, RechargeOrder?)> getRechargeOrderInProgress({
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.memberRechargeOrderInProgress.cashierPath,
        requestOptions: options,
      );
      if (response.code.success) {
        if (response.data == null || (response.data as Map).isEmpty) {
          return (true, null);
        }
        return (
          true,
          await response.safeFromJson(
            RechargeOrder.fromJson,
            response.data,
            modelName: 'RechargeOrder',
            options: options,
            logger: logger,
          )
        );
      }
      return (false, null);
    } catch (error, stackTrace) {
      logger.severe('getRechargeOrderInProgress Error:', error, stackTrace);
      return (false, null);
    }
  }

  //创建充值订单
  Future<RechargeOrder?> createRechargeOrder(
    RequestCreateRechargeOrder data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.memberCreateRechargeOrder.cashierPath,
        data: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        if (response.data == null || (response.data as Map).isEmpty) {
          return null;
        }
        return await response.safeFromJson(
          RechargeOrder.fromJson,
          response.data,
          modelName: 'RechargeOrder',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('createRechargeOrder Error:', error, stackTrace);
      return null;
    }
  }

  // 确认充值订单
  Future<ConfirmRechargeOrder?> confirmRechargeOrder(
    RequestConfirmRechargeOrder data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.memberConfirmRechargeOrder.cashierPath,
        data: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        if (response.data == null || (response.data as Map).isEmpty) {
          return null;
        }
        return await response.safeFromJson(
          ConfirmRechargeOrder.fromJson,
          response.data,
          modelName: 'ConfirmRechargeOrder',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('confirmRechargeOrder Error:', error, stackTrace);
      return null;
    }
  }

  // 充值订单添加支付方式
  Future<RechargeOrder?> createPaymentOrder(
    RequestCreatePaymentOrder data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.memberRechargeOrderAddPaymentMethod.cashierPath,
        data: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        if (response.data == null || (response.data as Map).isEmpty) {
          return null;
        }
        return await response.safeFromJson(
          RechargeOrder.fromJson,
          response.data,
          modelName: 'RechargeOrder',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('createPaymentOrder Error:', error, stackTrace);
      return null;
    }
  }

  // 充值订单撤销支付方式
  Future<RechargeOrder?> cancelPaymentOrder(
    RequestCancelPaymentOrder data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.memberRechargeOrderCancelPaymentMethod.cashierPath,
        data: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        if (response.data == null || (response.data as Map).isEmpty) {
          return null;
        }
        return await response.safeFromJson(
          RechargeOrder.fromJson,
          response.data,
          modelName: 'RechargeOrder',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('cancelPaymentOrder Error:', error, stackTrace);
      return null;
    }
  }

  // 获取支付方式的二维码
  Future<PaymentQrcode?> getPaymentQrcode(
    RequestPaymentQrcodeForRecharge data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.memberRechargeOrderPaymentQrcode.cashierPath,
        queryParameters: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          PaymentQrcode.fromJson,
          response.data,
          modelName: 'PaymentQrcode',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getPaymentQrcode Error:', error, stackTrace);
      return null;
    }
  }
}
