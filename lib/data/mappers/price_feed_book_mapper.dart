import 'package:kraken_crypto_watch/core/mappers/mapper.dart';
import 'package:kraken_crypto_watch/data/dtos/price_feed_dto.dart';
import 'package:kraken_crypto_watch/domain/entities/book_entity.dart';

class PriceFeedBookMapper implements Mapper<PriceFeedBookDTOBook, BookEntity> {
  @override
  BookEntity mapFrom(PriceFeedBookDTOBook from) {
    return BookEntity(
        side: from.side == 'sell' ? Side.ask : Side.bid,
        price: from.price,
        quantity: from.quantity);
  }

  @override
  PriceFeedBookDTOBook mapTo(BookEntity to) {
    throw UnimplementedError();
  }
}
