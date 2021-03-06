import 'package:kraken_crypto_watch/data/data_sources/price_feed_data_source.dart';
import 'package:kraken_crypto_watch/data/mappers/price_feed_book_mapper.dart';
import 'package:kraken_crypto_watch/data/mappers/price_feed_snapshot_mapper.dart';
import 'package:kraken_crypto_watch/domain/entities/book_entity.dart';
import 'package:kraken_crypto_watch/domain/repositories/price_feed_repository.dart';

class PriceFeedRepositoryImpl implements PriceFeedRepository {
  final PriceFeedDataSource _dataSource;
  final PriceFeedBookMapper _bookMapper;
  final PriceFeedSnapshotMapper _snapshotMapper;

  PriceFeedRepositoryImpl(
      this._dataSource, this._bookMapper, this._snapshotMapper);

  @override
  void askBookFeed({required String ticker}) {
    _dataSource.askBookFeed(ticker: ticker);
  }

  @override
  Stream<BookEntity> getBooks() {
    return _dataSource.books.map((book) => _bookMapper.mapFrom(book));
  }

  @override
  Stream<List<BookEntity>> getSnapshots() {
    return _dataSource.snapshots
        .map((snapshot) => _snapshotMapper.mapFrom(snapshot));
  }

  @override
  Future<void> connect() {
    return _dataSource.connect();
  }

  @override
  Future<void> disconnect() {
    return _dataSource.disconnect();
  }
}
