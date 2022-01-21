import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:kraken_crypto_watch/data/data_sources/price_feed_data_source.dart';
import 'package:kraken_crypto_watch/data/dtos/price_feed_dto.dart';
import 'package:kraken_crypto_watch/data/mappers/price_feed_book_mapper.dart';
import 'package:kraken_crypto_watch/data/mappers/price_feed_snapshot_mapper.dart';
import 'package:kraken_crypto_watch/data/repositories/price_feed_repository_impl.dart';
import 'package:kraken_crypto_watch/domain/entities/book_entity.dart';
import 'package:kraken_crypto_watch/domain/repositories/price_feed_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'price_feed_repository_test.mocks.dart';

@GenerateMocks(
    [PriceFeedDataSource, PriceFeedBookMapper, PriceFeedSnapshotMapper])
void main() async {
  // Mock dependencies
  MockPriceFeedDataSource mockDataSource = MockPriceFeedDataSource();
  MockPriceFeedBookMapper mockPriceFeedBookMapper = MockPriceFeedBookMapper();
  MockPriceFeedSnapshotMapper mockPriceFeedSnapshotMapper =
      MockPriceFeedSnapshotMapper();

  // Mock data
  PriceFeedBookDTOBook dto = const PriceFeedBookDTO.book(
      id: "id",
      side: "bid",
      seq: 549538,
      price: 3.33,
      quantity: 4.44,
      timestamp: 17934344) as PriceFeedBookDTOBook;
  BookEntity entity = BookEntity(side: Side.ask, price: 3.33, quantity: 4.44);
  var mockResult = Completer<void>();
  Exception exception = Exception();

  // Tested instance
  PriceFeedRepository repository = PriceFeedRepositoryImpl(
      mockDataSource, mockPriceFeedBookMapper, mockPriceFeedSnapshotMapper);

  void _resetCompleter() {
    mockResult = Completer<void>();
    mockResult.complete();
  }

  group('Price feed repository', () {
    group('Connect and disconnect', () {
      test('Connect', () {
        _resetCompleter();
        when(mockDataSource.connect())
            .thenAnswer((realInvocation) => mockResult.future);

        expect(repository.connect(), completion(equals(null)));
      });

      test('Disconnect', () {
        _resetCompleter();
        when(mockDataSource.disconnect())
            .thenAnswer((realInvocation) => mockResult.future);

        expect(repository.connect(), completion(equals(null)));
      });

      test('Exception when connecting', () {
        when(mockDataSource.connect())
            .thenAnswer((realInvocation) => Future.error(exception));

        expect(repository.connect(), throwsA(exception));
      });

      test('Exception when disconnecting', () {
        when(mockDataSource.disconnect())
            .thenAnswer((realInvocation) => Future.error(exception));

        expect(repository.disconnect(), throwsA(exception));
      });
    });

    group('Books', () {
      test('Get books', () async {
        when(mockDataSource.books)
            .thenAnswer((realInvocation) => Stream.value(dto));
        when(mockPriceFeedBookMapper.mapFrom(any))
            .thenAnswer((realInvocation) => entity);

        await expectLater(repository.getBooks(), emits(entity));
        expect(
            verify(mockPriceFeedBookMapper.mapFrom(captureAny)).captured.single,
            dto);
      });

      test('Exception getting books', () async {
        when(mockDataSource.books)
            .thenAnswer((realInvocation) => Stream.error(exception));

        await expectLater(repository.getBooks(), emitsError(exception));
        verifyNever(mockPriceFeedBookMapper.mapFrom(captureAny));
      });
    });
  });
}
