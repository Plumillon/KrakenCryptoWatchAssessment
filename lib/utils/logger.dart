import 'package:kraken_crypto_watch/presentation/di/injector.dart';
import 'package:logger/logger.dart';

Logger getLogger() {
  return getIt<Logger>();
}
