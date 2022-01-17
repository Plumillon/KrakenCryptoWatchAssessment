import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:kraken_crypto_watch/data/repositories/price_feed_repository_impl.dart';
import 'package:kraken_crypto_watch/domain/repositories/price_feed_repository.dart';
import 'package:logger/logger.dart';

import 'injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true,
  asExtension: false, // default
)
GetIt configureInjection() => $initGetIt(getIt);

// @module
// abstract class NetworkModule {
//   @injectable
//   WebSocketChannel get webSocket =>
//       WebSocketChannel.connect(Uri.parse(Constants.wsURL));
// }

@module
abstract class AppModule {
  @lazySingleton
  Logger get logger => Logger(
        printer: PrettyPrinter(
            methodCount: 2,
            // number of method calls to be displayed
            errorMethodCount: 8,
            // number of method calls if stacktrace is provided
            lineLength: 120,
            // width of the output
            colors: true,
            // Colorful log messages
            printEmojis: true,
            // Print an emoji for each log message
            printTime: true // Should each log print contain a timestamp
            ),
      );
}

@module
abstract class RepositoriesModule {
  @lazySingleton
  PriceFeedRepository priceFeedRepository(
          PriceFeedRepositoryImpl priceFeedRepositoryImpl) =>
      priceFeedRepositoryImpl;
}
