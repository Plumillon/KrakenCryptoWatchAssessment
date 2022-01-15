import 'package:kraken_crypto_watch/core/mappers/mapper.dart';
import 'package:kraken_crypto_watch/domain/entities/book_entity.dart'
    as book_entity;
import 'package:kraken_crypto_watch/presentation/models/book_model.dart';

class BookModelMapper implements Mapper<BookModel, book_entity.BookEntity> {
  @override
  book_entity.BookEntity mapFrom(BookModel from) {
    return book_entity.BookEntity(
        side:
            from.side == Side.bid ? book_entity.Side.bid : book_entity.Side.ask,
        price: from.price,
        quantity: from.quantity);
  }

  @override
  BookModel mapTo(book_entity.BookEntity to) {
    throw UnimplementedError();
  }
}
