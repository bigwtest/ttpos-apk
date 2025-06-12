library shared_loader_file;

// Dart imports:
import 'dart:typed_data';

abstract class FileLoader {
  Future<Uint8List> loadFileAsUint8List(String path);
  Future<ByteData> loadFileAsByteData(String path);
}
