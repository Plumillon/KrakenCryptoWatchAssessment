import 'package:kraken_crypto_watch/domain/entities/book_entity.dart';
import 'package:kraken_crypto_watch/domain/repositories/price_feed_repository.dart';
import 'package:kraken_crypto_watch/domain/use_cases/use_case.dart';
import 'package:rxdart/rxdart.dart';

class GetBooksUseCase implements StreamUseCase<Side, List<BookEntity>> {
  final PriceFeedRepository _priceFeedRepository;
  final Map<double, BookEntity> _book = {};

  GetBooksUseCase(this._priceFeedRepository);

  /// Get snapshots and book entries
  ///
  /// As snapshots are list and book entries arrive one by one
  /// we need to sync them then order by price
  @override
  Stream<List<BookEntity>> execute({required Side param}) {
    return MergeStream([
      _priceFeedRepository.getBooks(),
      _priceFeedRepository
          .getSnapshots()
          .flatMap((books) => Stream.fromIterable(books))
    ]).where((book) => book.side == param).map((bookEntry) {
      // We keep the book map up to date
      // and remove book entry with 0 quantity
      if (bookEntry.quantity == 0) {
        _book.remove(bookEntry.price);
      } else {
        _book[bookEntry.price] = bookEntry;
      }

      // And order it depending of the asked side
      // ASC for asks and DESC for bids
      var sortedBooks = Map.fromEntries(_book.entries);
      sortedBooks.entries.toList().sort((entry1, entry2) =>
          entry1.value.compareTo(entry2.value) * (param == Side.ask ? -1 : 1));

      return sortedBooks.entries
          .where((entry) => entry.value.side == param)
          .map((entry) => entry.value)
          .take(20)
          .toList();
    });
  }
}
