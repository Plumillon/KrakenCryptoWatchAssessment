import 'package:kraken_crypto_watch/core/mappers/mapper.dart';
import 'package:kraken_crypto_watch/domain/entities/book_entity.dart'
    as book_entity;
import 'package:kraken_crypto_watch/presentation/models/book_model.dart';

class SideModelMapper implements Mapper<Side, book_entity.Side> {
  @override
  book_entity.Side mapFrom(Side from) {
    switch (from) {
      case Side.bid:
        return book_entity.Side.bid;
      case Side.ask:
        return book_entity.Side.ask;
    }
  }

  @override
  Side mapTo(book_entity.Side to) {
    switch (to) {
      case book_entity.Side.bid:
        return Side.bid;
      case book_entity.Side.ask:
        return Side.ask;
    }
  }
}
