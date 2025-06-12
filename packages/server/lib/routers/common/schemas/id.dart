// Package imports:
import 'package:luthor/luthor.dart';

final Validator idStringValidator = l.string().required();

final Validator idUuidValidator = l.string().uuid().required();

final Validator idNumberValidator = l.number().int().required();
