import 'package:async/async.dart';
import 'package:kraken_crypto_watch/domain/entities/book_entity.dart';
import 'package:kraken_crypto_watch/domain/repositories/price_feed_repository.dart';
import 'package:kraken_crypto_watch/domain/use_cases/use_case.dart';
import 'package:rxdart/rxdart.dart';

class GetBooksUseCaseParam {
  final String ticker;
  final Side bookSide;

  GetBooksUseCaseParam({required this.ticker, required this.bookSide});
}

class GetBooksUseCase
    implements StreamUseCase<GetBooksUseCaseParam, List<BookEntity>> {
  final PriceFeedRepository _priceFeedRepository;
  Map<double, BookEntity> _book = {};

  GetBooksUseCase(this._priceFeedRepository);

  /// Get snapshots and book entries
  ///
  /// As snapshots are list and book entries arrive one by one
  /// we need to sync them and order them by price in _book
  ///
  @override
  Stream<List<BookEntity>> execute({required GetBooksUseCaseParam param}) {
    _priceFeedRepository.askBookFeed(ticker: param.ticker);

    return StreamGroup.merge([
      _priceFeedRepository
          .getSnapshots()
          .flatMap((books) => Stream.fromIterable(books)),
      _priceFeedRepository.getBooks()
    ]).where((book) => book.side == param.bookSide).map((bookEntry) {
      // We keep the book map up to date
      _book[bookEntry.price] = bookEntry;

      // And order it depending of the asked side
      // ASC for asks and DESC for bids
      _book = Map.fromEntries(_book.entries.toList()
        ..sort((entry1, entry2) => entry1.value.compareTo(entry2.value)));

      return _book.entries.map((entry) => entry.value).toList();
    });
  }
}
