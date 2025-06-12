part of '../main_controller.dart';

mixin BaseInfoCompany on GetxController {
  Rx<BaseInfo?> get data;
  Company? get company => data.value?.company;

  Future<void> checkCompany(BaseInfo response) async {
    try {
      /// 判断当前商家是否有值
      final currentCompanyUuid = company?.uuid;
      if (currentCompanyUuid == null) return;

      /// 判断API返回的商家是否与当前商家一致
      final nextCompanyUuid = response.company.uuid;
      if (currentCompanyUuid == nextCompanyUuid) return;

      /// 切换商家前需要先清空当前商家的所有缓存数据
      // 创建一个缓存的实例, 仅删除当前商家的缓存数据，其他基础数据保留
      final SharedPreferencesWithCache cache = await SharedPreferencesWithCache.create(
        cacheOptions: SharedPreferencesWithCacheOptions(
          allowList: {
            /// 当前路由
            StorageKey.currentRoute.asString,

            /// 当前桌台列表
            StorageKey.deskList.asString,

            /// 当前桌台分类
            StorageKey.deskCategory.asString,

            /// 当前桌台信息
            StorageKey.deskCurrentInfo.asString,

            /// 自助餐套餐信息
            StorageKey.buffetList.asString,

            /// 商品分类列表
            StorageKey.goodsCategoryList.asString,

            /// 商品列表
            StorageKey.goodsBaseList.asString,

            /// 商品卡片模式
            StorageKey.currentCardStyle.asString,

            /// 设置字体大小
            StorageKey.currentFontSize.asString,

            /// 语言
            StorageKey.languageCurrent.asString,
            StorageKey.languageSecond.asString,

            /// 接单设置语音播报
            StorageKey.acceptOrderVoiceNotification.asString,

            /// 支付方式列表
            StorageKey.paymentMethodList.asString,

            /// 平板
            StorageKey.isTabletBind.asString,
            StorageKey.tabletLocalVoiceReminder.asString,
            StorageKey.tabletLocalVoiceReminderAt.asString,
            StorageKey.tabletCloudVoiceReminder.asString,
            StorageKey.tabletCloudVoiceReminderAt.asString,

            /// 打印队列
            StorageKey.printQueue.asString,

            // 未处理通知
            StorageKey.unprocessedNoticeList.asString,

            /// 锁屏
            StorageKey.isLockScreen.asString,

            /// H5 订单
            StorageKey.h5OrderUuid.asString,

            /// 店铺过期时间戳
            StorageKey.saasExpiredAt.asString,
            StorageKey.saasExpiredShowDialogAtDays.asString,
          },
        ),
      );

      /// 清空缓存
      await cache.clear();
    } catch (error, stackTrace) {
      debugPrint('checkCompany error: $error');
      debugPrintStack(stackTrace: stackTrace);

      /// 走到这个逻辑证明是缓存数据出了问题了，清空所有缓存是有必要的
      Future<void> forceClearCache() async {
        final SharedPreferencesWithCache cache = await SharedPreferencesWithCache.create(
          cacheOptions: SharedPreferencesWithCacheOptions(),
        );

        await cache.clear();

        Future.microtask(() {
          Get.offAllNamed(RouteNames.login);
        });
      }

      /// 如果当前有弹窗，则不弹出新的弹窗，否则弹出切换商家失败弹窗
      if (Get.isDialogOpen == true) {
        await forceClearCache();
        return;
      }
      DialogManager.showErrorDialog(
        message: '切换商家失败，请尝试重新登录'.tr,
        onConfirm: () async {
          await forceClearCache();
          return true;
        },
      );
    }
  }
}
