part of '../controller.dart';

class EncryptInterceptor extends Interceptor {
  RSAKeyPairResponse? _keyPair;
  String? _serverPublicKey;

  Future<RSAKeyPairResponse?> get keyPair async {
    _keyPair ??= await EncryptHelper.generateKeyPair(clientId: await DeviceId.getId());
    return _keyPair;
  }

  /// 加密数据
  Future<String?> encrypt(dynamic data) async {
    final thisKeyPair = await keyPair;
    if (thisKeyPair == null) return null;
    final serverPublicKey = await _getServerPublicKey();
    if (serverPublicKey == null || serverPublicKey.isEmpty) return null;
    return EncryptHelper.encrypt(
      data,
      serverPublicKey,
    );
  }

  /// 解密数据
  Future<dynamic> decrypt(String encryptedData) async {
    final thisKeyPair = await keyPair;
    if (thisKeyPair == null) return null;
    return EncryptHelper.decrypt(
      encryptedData,
      thisKeyPair.privateKey,
      thisKeyPair.clientId,
    );
  }

  Future<String?> _getServerPublicKeyFromAPI() async {
    try {
      final baseUrl = const String.fromEnvironment('API_BASE_URL');
      if (baseUrl.isEmpty) return null;

      final dio = Dio(
        BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
        ),
      );
      dio.options.headers['Content-Type'] = 'application/json';

      final response = await dio.get(
        APIPath.passportServerPublicKey.basePath,
        queryParameters: {
          'client_id': await DeviceId.getId(),
          'type': 'jsencrypt',
        },
      );
      if (response.statusCode != 200) {
        throw Exception('获取服务器公钥失败');
      }

      final data = BaseResponse.fromJson(response.data);
      if (data.code < 0) {
        throw Exception('获取服务器公钥失败');
      }

      final baseResponse = ResponseDataServerPublicKey.fromJson(data.data);

      if (baseResponse.publicKey.isNotEmpty) {
        await _setServerPublicKeyToStorage(baseResponse.publicKey);
      }

      return baseResponse.publicKey;
    } catch (error, stackTrace) {
      debugPrint('EncryptInterceptor _getServerPublicKeyFromAPI error: $error');
      debugPrintStack(stackTrace: stackTrace);
      return null;
    }
  }

  Future<String?> _getServerPublicKeyFromStorage() async {
    try {
      if (!getx.Get.isRegistered<SharedPreferencesWithCache>()) return null;
      final storage = getx.Get.find<SharedPreferencesWithCache>();
      final publicKey = storage.getString(StorageKey.authServerPublicKey.asString);
      return publicKey;
    } catch (error, stackTrace) {
      debugPrint('EncryptInterceptor _getServerPublicKeyFromStorage error: $error');
      debugPrintStack(stackTrace: stackTrace);
      return null;
    }
  }

  Future<void> _setServerPublicKeyToStorage(String publicKey) async {
    try {
      if (!getx.Get.isRegistered<SharedPreferencesWithCache>()) return;
      final storage = getx.Get.find<SharedPreferencesWithCache>();
      await storage.setString(StorageKey.authServerPublicKey.asString, publicKey);
    } catch (error, stackTrace) {
      debugPrint('EncryptInterceptor _setServerPublicKeyToStorage error: $error');
      debugPrintStack(stackTrace: stackTrace);
    }
  }

  Future<void> _removeServerPublicKeyFromStorage() async {
    try {
      if (!getx.Get.isRegistered<SharedPreferencesWithCache>()) return;
      final storage = getx.Get.find<SharedPreferencesWithCache>();
      await storage.remove(StorageKey.authServerPublicKey.asString);
    } catch (error, stackTrace) {
      debugPrint('EncryptInterceptor _removeServerPublicKeyFromStorage error: $error');
      debugPrintStack(stackTrace: stackTrace);
    }
  }

  Future<String?> _getServerPublicKey() async {
    try {
      _serverPublicKey ??= await _getServerPublicKeyFromStorage();
      _serverPublicKey ??= await _getServerPublicKeyFromAPI();
      if (_serverPublicKey == null || _serverPublicKey!.isEmpty) {
        _removeServerPublicKeyFromStorage();
        throw Exception('获取服务器公钥失败');
      }

      return _serverPublicKey;
    } catch (error, stackTrace) {
      debugPrint('EncryptInterceptor _getServerPublicKey error: $error');
      debugPrintStack(stackTrace: stackTrace);
      return null;
    }
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    if (APIPath.isEncryptPath(options.path) && !kIsWeb) {
      try {
        final encryptedData = await encrypt(options.data);
        debugPrint('EncryptInterceptor onRequest: $encryptedData');

        // if (encryptedData != null && encryptedData.isNotEmpty) {
        //   options.data = {
        //     'encrypted': encryptedData,
        //   };

        //   options.headers['Encrypt'] =
        //       'encrypt_type=jsencrypt;encrypt_id=${await DeviceId.getId()};client_type=jsencrypt;client_key=${(await keyPair)?.publicKey}';

        // handler.next(options);
        // return;
        // }
      } catch (error, stackTrace) {
        debugPrint('EncryptInterceptor onRequest error: $error');
        debugPrintStack(stackTrace: stackTrace);
      }
    }

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    if (APIPath.isEncryptPath(response.requestOptions.path) && !kIsWeb) {
      debugPrint('EncryptInterceptor onResponse: ${response.requestOptions.path} ${(await keyPair)?.entries}');
    }

    handler.next(response);
  }
}
