import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({
    super.key,
    required this.errorDetails,
    this.showScaffold = true,
  });

  final FlutterErrorDetails errorDetails;
  final bool showScaffold;

  @override
  Widget build(BuildContext context) {
    return showScaffold
        ? Scaffold(
            body: Center(
              child: friendlyErrorView(errorDetails),
            ),
          )
        : Center(
            child: friendlyErrorView(errorDetails),
          );
  }

  /// 一个友好的错误展示组件
  Widget friendlyErrorView(FlutterErrorDetails errorDetails) {
    return Placeholder(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 4.0,
        children: [
          const Text('发生错误'),
          Text(errorDetails.exceptionAsString()),
        ],
      ),
    );
  }
}
