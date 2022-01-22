import 'package:kraken_crypto_watch/domain/repositories/price_feed_repository.dart';
import 'package:kraken_crypto_watch/domain/use_cases/use_case.dart';

class DisconnectUseCase implements FutureUseCase<void, void> {
  final PriceFeedRepository _priceFeedRepository;

  DisconnectUseCase(this._priceFeedRepository);

  /// Disconnect
  @override
  Future<void> execute({required void param}) {
    return _priceFeedRepository.disconnect();
  }
}
