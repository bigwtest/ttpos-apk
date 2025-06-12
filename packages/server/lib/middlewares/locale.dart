// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:logging/logging.dart' as logging;
import 'package:shelf/shelf.dart';
import 'package:shelf_multipart/shelf_multipart.dart';
import 'package:ttpos_shared/shared.dart';

/// 语言环境中间件
///
/// 此中间件用于处理请求中的语言环境信息。它会尝试从以下几个位置提取语言环境：
/// 1. HTTP 请求头中的 'locale' 字段
/// 2. URL 查询参数中的 'locale' 参数
/// 3. POST 或 PUT 或 PATCH 请求的 JSON 主体中的 'locale' 字段
///
/// 提取到的语言环境会被添加到请求的上下文中，以便后续处理使用。
/// 如果未能提取到有效的语言环境，将默认使用英语（en）。
///
/// 该中间件使用 [SupportedLocale] 枚举来验证和标准化语言环境代码。

Middleware localeMiddleware() {
  final logging.Logger log = logging.Logger('LocaleMiddleware');

  return (Handler innerHandler) {
    return (Request request) async {
      // TODO: 此处应该判断是否为 Upload 的路由, 是就跳过以下逻辑
      String? locale;
      try {
        // 从 header 中提取 locale
        String? localeInHeader = request.headers['locale'];

        // 从 query 参数中提取
        String? localeInQuery = request.url.queryParameters['locale'];

        String? localeInBody;
        // 从 body 中提取
        if (request.method == 'POST' || request.method == 'PUT' || request.method == 'PATCH') {
          final contentType = request.headers['content-type'] ?? 'application/json';
          switch (contentType) {
            case 'application/json':
              {
                final body = await request.readAsString();
                final jsonBody = json.decode(body);
                localeInBody = jsonBody['locale'];
                break;
              }
            case 'application/x-www-form-urlencoded':
              {
                if (request.formData() case var form?) {
                  // Read all form-data parameters into a single map:
                  final parameters = <String, String>{
                    await for (final formData in form.formData)
                      // TODO: 这里需要判断是否为图片或文件, 如果是, 则使用 formData.part.readBytes() 读取文件内容
                      formData.name: await formData.part.readString(),
                  };
                  localeInBody = parameters['locale'];
                } else if (
                    // TODO: 处理 multipart 数据
                    request.multipart()
                    // ignore: unused_local_variable
                    case var multipart?) {}
                break;
              }
            case 'multipart/form-data':
              {
                if (request.formData() case var form?) {
                  // Read all form-data parameters into a single map:
                  final parameters = <String, String>{
                    await for (final formData in form.formData)
                      // TODO: 这里需要判断是否为图片或文件, 如果是, 则使用 formData.part.readBytes() 读取文件内容
                      formData.name: await formData.part.readString(),
                  };
                  localeInBody = parameters['locale'];
                } else if (
                    // TODO: 处理 multipart 数据
                    request.multipart()
                    // ignore: unused_local_variable
                    case var multipart?) {}
                break;
              }
            default:
              {
                break;
              }
          }
        }
        locale = localeInHeader ?? localeInQuery ?? localeInBody;
      } catch (error) {
        log.severe(error);
      }

      // 将 locale 添加到请求上下文
      var updatedRequest = request.change(
        context: {
          ...request.context,
          'locale': locale?.isNotEmpty == true
              ? SupportedLocale.safeValueOf(
                  locale!,
                  fallback: SupportedLocale.en,
                ).code
              : SupportedLocale.en.code,
        },
      );
      // 继续处理请求
      return innerHandler(updatedRequest);
    };
  };
}
