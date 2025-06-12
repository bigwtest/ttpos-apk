part of '../controller.dart';

// 开发环境拦截器 用来模拟各种情况
class DevInterceptor extends Interceptor {
  const DevInterceptor({
    this.mockTokenExpired = false,
    this.mockTokenExpiredWhiteList = const [
      //
    ],
    this.mockCodeFailure = false,
    this.mockCodeFailureList = const [
      //
    ],
  }) : super();

  final bool mockTokenExpired;
  final List<String> mockTokenExpiredWhiteList;

  final bool mockCodeFailure;
  final List<String> mockCodeFailureList;

  // @override
  // void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
  //   super.onRequest(options, handler);
  // }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    // super.onResponse(response, handler);
    // NOTE: 模拟鉴权失败
    if (mockTokenExpired) {
      if (mockTokenExpiredWhiteList.contains(response.requestOptions.path)) {
        handler.next(response);
        return;
      }

      response.data = BaseResponse(
        code: ErrorCode.tokenExpired.code,
        message: 'Mock 鉴权失败',
        data: response.data,
      ).toJson();

      handler.next(response);
      return;
    }

    // NOTE: 模拟接口失败
    if (mockCodeFailure) {
      if (mockCodeFailureList.contains(response.requestOptions.path)) {
        response.data = BaseResponse(
          code: ErrorCode.failure.code,
          message: 'Mock 接口失败',
          data: response.data,
        ).toJson();

        handler.next(response);
        return;
      }
    }

    // if (response.requestOptions.path == APIPath.getPrintList.cashierPath) {
    //   response.data = BaseResponse(
    //     code: ErrorCode.success.code,
    //     message: 'Mock 接口成功',
    //     data: BaseList(
    //       list: List.generate(
    //         3,
    //         (index) => RespPrinterData(
    //           copies: 1,
    //           data:
    //               'GZIP:H4sIAAAAAAAC/+yU3W3EMAyDV+JPnNrjSOdm/xEKybdCn+4ggEmI8DNfLATTYt4EmSInt0j+IueK0rxKYzgEnxmImk6Baft1UkxdANAJd/qQ2pnZjtq5znsl+EAmohnFE/rkWX+uuZq222laNjmattahVQvep1Xlv62+rT6o1VbfxFKE9v/O++bTMiwPPYatp74F0z8O17N0IfA6++K9Nfa4gb8AAAD//4E8Dw54BAAA',
    //           printMethod: 1,
    //           isCashierPrinter: false,
    //           printerConfig: '{"IP": "192.168.100.235", "PORT": "9100"}',
    //           printerType: 'XPRINTER_LAN',
    //           uuid: index,
    //         ).toJson(),
    //       ),
    //     ).toJson(),
    //   ).toJson();

    //   handler.next(response);
    //   return;
    // }

    handler.next(response);
  }

  // @override
  // void onError(DioException err, ErrorInterceptorHandler handler) {
  //   super.onError(err, handler);
  // }
}
