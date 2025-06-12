// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:shelf/shelf.dart';
import 'package:shelf_multipart/shelf_multipart.dart';

// Project imports:
import 'package:server/routers/common/controllers/base.dart';

dynamic deepJsonDecode(dynamic value) {
  if (value is String) {
    try {
      final decoded = jsonDecode(value);
      if (decoded is Map<String, dynamic>) {
        return {
          for (final entry in decoded.entries)
            entry.key: deepJsonDecode(entry.value),
        };
      } else if (decoded is List) {
        return decoded.map(deepJsonDecode).toList();
      }
      return decoded;
    } catch (e) {
      return value;
    }
  }
  return value;
}

extension Multipart on BaseController {
  Future<Map<String, dynamic>> getMultipartFormData(Request request) async {
    if (request.formData() case var form?) {
      // 读取所有表单数据参数到一个单一的映射中:
      final parameters = <String, dynamic>{
        await for (final formData in form.formData)
          // TODO: 这里需要判断是否为图片或文件, 如果是, 则使用 formData.part.readBytes() 读取文件内容
          formData.name: deepJsonDecode(await formData.part.readString()),
      };
      return parameters;
    } else if (
        // TODO: 处理 multipart 数据
        request.multipart()
        // ignore: unused_local_variable
        case var multipart?) {
      return {};
    }
    return {};
  }

  Future<Map<String, dynamic>> getJsonData(Request request) async {
    final body = await request.readAsString();
    return deepJsonDecode(body);
  }

  Future<Map<String, dynamic>> getInputData(Request request) async {
    final contentType = request.headers['content-type'] ?? 'application/json';

    switch (contentType) {
      case 'application/json':
        return await getJsonData(request);
      case 'application/x-www-form-urlencoded':
        return await getMultipartFormData(request);
      case 'multipart/form-data':
        return await getMultipartFormData(request);
      default:
        {
          final formData = await getMultipartFormData(request);
          return formData.isNotEmpty ? formData : await getJsonData(request);
        }
    }
  }
}
