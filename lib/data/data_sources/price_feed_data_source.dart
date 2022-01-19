import 'package:injectable/injectable.dart';
import 'package:kraken_crypto_watch/data/dtos/book_entry_dto.dart';
import 'package:kraken_crypto_watch/data/dtos/price_feed_dto.dart';
import 'package:kraken_crypto_watch/data/facades/price_feed_facade.dart';
import 'package:kraken_crypto_watch/utils/logger.dart';
import 'package:rxdart/rxdart.dart';

@injectable
class PriceFeedDataSource {
  final PriceFeedFacade _facade;

  PriceFeedDataSource(this._facade);

  Stream<PriceFeedBookDTOSnapshot> get snapshots =>
  //     Stream.periodic(const Duration(seconds: 1), (int index) {
  //   return PriceFeedBookDTO.snapshot(id: "PI_XBTUSD", seq: index, timestamp: 76754533,
  //       asks: [BookEntryDTO(price: index + 1.22, quantity: 1.2)], bids: [BookEntryDTO(price: index - 1.22, quantity: 0.2)]) as PriceFeedBookDTOSnapshot;
  // });

      _facade.books
      .where((feed) => feed is PriceFeedBookDTOSnapshot)
      .map((feed) => feed as PriceFeedBookDTOSnapshot);

  Stream<PriceFeedBookDTOBook> get books =>
    //     Stream.periodic(const Duration(seconds: 1), (int index) {
    //   return PriceFeedBookDTO.book(id: "PI_XBTUSD", seq: index, timestamp: 76754555,
    //       side: "buy", price: index + 0.33, quantity: index + 0.33) as PriceFeedBookDTOBook;
    // });

      _facade.books
      .where((feed) => feed is PriceFeedBookDTOBook)
      .map((feed) => feed as PriceFeedBookDTOBook);

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
