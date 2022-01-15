import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:kraken_crypto_watch/core/constants.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

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
