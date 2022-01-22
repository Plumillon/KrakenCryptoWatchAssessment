import 'package:kraken_crypto_watch/domain/repositories/price_feed_repository.dart';
import 'package:kraken_crypto_watch/domain/use_cases/use_case.dart';

class ConnectAndAskUseCase implements FutureUseCase<String, void> {
  final PriceFeedRepository _priceFeedRepository;

  ConnectAndAskUseCase(this._priceFeedRepository);

  /// Connect and ask for books
  ///
  @override
  Future<void> execute({required String param}) {
    return _priceFeedRepository
        .connect()
        .then((_) => _priceFeedRepository.askBookFeed(ticker: param));
  }
}
