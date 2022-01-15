import 'package:injectable/injectable.dart';
import 'package:kraken_crypto_watch/data/dtos/price_feed_dto.dart';
import 'package:kraken_crypto_watch/data/facades/price_feed_facade.dart';

@injectable
class PriceFeedDataSource {
  final PriceFeedFacade _facade;

  PriceFeedDataSource(this._facade);

  Stream<PriceFeedBookDTOSnapshot> get snapshots => _facade.books
      .where((feed) => feed is PriceFeedBookDTOSnapshot)
      .map((feed) => feed as PriceFeedBookDTOSnapshot);

  Stream<PriceFeedBookDTOBook> get books => _facade.books
      .where((feed) => feed is PriceFeedBookDTOBook)
      .map((feed) => feed as PriceFeedBookDTOBook);

  void askBookFeed({required String ticker}) {
    _facade.sendProductsMessage(tickers: [ticker]);
  }

  void connect() {
    _facade.connect();
  }

  void disconnect() {
    _facade.disconnect();
  }
}
