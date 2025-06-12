// Package imports:
import 'package:logging/logging.dart' as logging;
// Project imports:
import 'package:server/routers/common/utils/output.dart';
import 'package:server/routers/dev/controllers/root.dart';
import 'package:server/routers/dev/services/printer/generate.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:ttpos_shared/shared.dart' as shared show PrinterTemplateName;

class DevPrinterGenerateController extends DevRootController {
  final DevPrinterGenerateService devPrinterGenerateService = DevPrinterGenerateService();

  @override
  logging.Logger get log => logging.Logger('Dev Printer Generate Controller');

  @override
  Router get router {
    final router = Router();

    router.get('/generate/<templateName>', generate);

    return router;
  }

  Future<Response> generate(Request request, String templateName) async {
    try {
      final name = shared.PrinterTemplateName.safeValueOf(templateName);
      Stopwatch pdfWatcher = Stopwatch()..start();
      final pdfBytes = await devPrinterGenerateService.generate(name: name);
      log.info('Generating PDF took ${pdfWatcher.elapsedMilliseconds}ms');
      pdfWatcher.stop();
      if (pdfBytes == null) {
        throw Exception('Generating PDF Failed');
      }

      Stopwatch imageWatcher = Stopwatch()..start();
      final imageBytes = await devPrinterGenerateService.convert2Image(pdfBytes);
      log.info('Generating Image took ${imageWatcher.elapsedMilliseconds}ms');
      imageWatcher.stop();
      if (imageBytes == null) {
        throw Exception('Generating Image Failed');
      }

      return Response.ok(
        imageBytes,
        headers: {
          'Content-Type': 'image/jpeg',
        },
      );
      // return Response.ok(
      //   pdfBytes,
      //   headers: {
      //     'Content-Type': 'application/pdf',
      //   },
      // );
    } catch (error) {
      log.severe(error);
      return outputError(message: 'Error generating');
    }

    // return Response.ok(pdfBytes, headers: {'Content-Type': 'application/pdf'});
  }
}
