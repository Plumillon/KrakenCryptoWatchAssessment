import 'package:injectable/injectable.dart';
import 'package:kraken_crypto_watch/data/dtos/price_feed_dto.dart';
import 'package:kraken_crypto_watch/data/facades/price_feed_facade.dart';
import 'package:kraken_crypto_watch/utils/logger.dart';
import 'package:rxdart/rxdart.dart';

@injectable
class PriceFeedDataSource {
  final PriceFeedFacade _facade;

  PriceFeedDataSource(this._facade);

  Stream<PriceFeedBookDTOSnapshot> get snapshots => _facade.books
      .where((feed) => feed is PriceFeedBookDTOSnapshot)
      .map((feed) => feed as PriceFeedBookDTOSnapshot)
      .doOnData((snapshot) => getLogger().v(snapshot));

  Stream<PriceFeedBookDTOBook> get books => _facade.books
      .where((feed) => feed is PriceFeedBookDTOBook)
      .map((feed) => feed as PriceFeedBookDTOBook)
      .doOnData((feed) => getLogger().v(feed));

  void askBookFeed({required String ticker}) {
    getLogger().i("Asking $ticker");
    _facade.sendProductsMessage(tickers: [ticker]);
  }

  Future<void> connect() {
    return _facade.connect();
  }

  Future<void> disconnect() {
    return _facade.disconnect();
  }
}
