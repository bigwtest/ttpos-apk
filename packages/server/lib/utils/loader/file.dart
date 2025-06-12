// Dart imports:
import 'dart:typed_data';

// Flutter imports:
import 'package:flutter/services.dart' show rootBundle;
// Package imports:
import 'package:ttpos_shared/shared.dart' as shared show FileLoader;

class FileLoader implements shared.FileLoader {
  @override
  Future<ByteData> loadFileAsByteData(String path) async {
    return await rootBundle.load(path);
  }

  @override
  Future<Uint8List> loadFileAsUint8List(String path) async {
    return await rootBundle.load(path).then(
          (value) => value.buffer.asUint8List(),
        );
  }
}
