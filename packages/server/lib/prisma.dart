// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/widgets.dart';

// Package imports:
import 'package:logging/logging.dart' as logging;
import 'package:orm_flutter/orm_flutter.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

// Project imports:
import 'package:server/prisma/client.dart';

PrismaClient? prismaClient;

Future<PrismaClient?> createPrismaClient([
  String? dbFileName = 'database.sqlite.db',
]) async {
  WidgetsFlutterBinding.ensureInitialized();

  final logging.Logger log = logging.Logger('Prisma');

  if (!Platform.isAndroid && !Platform.isIOS) {
    log.severe(
      'Prisma is not supported on this platform ${Platform.operatingSystem}',
    );
    return null;
  }

  try {
    log.info('Getting application support directory');
    final supportDir = await getApplicationSupportDirectory();
    log.info('Application support directory: $supportDir');

    log.info('Creating database path');
    final dbPath = join(supportDir.path, dbFileName);
    log.info('Database path: $dbPath');

    log.info('Creating database client');
    prismaClient = PrismaClient(datasourceUrl: 'file:$dbPath');
    log.info('Database client created');

    log.info('Connecting to database');
    await prismaClient?.$connect();
    log.info('Connected to database');

    log.info('Getting database engine');
    final engine = switch (prismaClient?.$engine) {
      LibraryEngine engine => engine,
      _ => null,
    };

    if (engine != null) {
      log.info(
        'Database engine datasourceUrl: ${engine.options.datasourceUrl}',
      );
      log.info('Applying migrations');
      await engine.applyMigrations(path: 'prisma/migrations');
      log.info('Applied migrations');
    } else {
      log.warning('Database engine is null');
    }

    return prismaClient;
  } catch (error) {
    log.severe('Error connecting to database', error);
    return null;
  }
}

Future<void> closePrismaClient() async {
  final logging.Logger log = logging.Logger('Prisma');
  if (!Platform.isAndroid && !Platform.isIOS) {
    log.severe(
      'Prisma is not supported on this platform ${Platform.operatingSystem}',
    );
    return;
  }
  try {
    log.info('Disconnecting from database');
    await prismaClient?.$disconnect();
    log.info('Disconnected from database');
  } catch (error) {
    log.severe('Error disconnecting from database', error);
  }
}
