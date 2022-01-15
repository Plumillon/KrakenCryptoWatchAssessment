import 'package:kraken_crypto_watch/core/mappers/mapper.dart';
import 'package:kraken_crypto_watch/data/dtos/price_feed_dto.dart';
import 'package:kraken_crypto_watch/domain/entities/book_entity.dart';

class PriceFeedSnapshotMapper
    implements Mapper<PriceFeedBookDTOSnapshot, List<BookEntity>> {
  @override
  List<BookEntity> mapFrom(PriceFeedBookDTOSnapshot from) {
    return [
      ...from.asks.map((book) => BookEntity(
          side: Side.ask, price: book.price, quantity: book.quantity)),
      ...from.bids.map((book) => BookEntity(
          side: Side.bid, price: book.price, quantity: book.quantity))
    ];
  }

  @override
  PriceFeedBookDTOSnapshot mapTo(List<BookEntity> to) {
    throw UnimplementedError();
  }
}
