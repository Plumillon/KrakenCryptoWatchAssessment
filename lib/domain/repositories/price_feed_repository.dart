import 'package:kraken_crypto_watch/domain/entities/book_entity.dart';

abstract class PriceFeedRepository {
  void askBookFeed({required String ticker});

  Stream<List<BookEntity>> getSnapshots();

  Stream<BookEntity> getBooks();
}
