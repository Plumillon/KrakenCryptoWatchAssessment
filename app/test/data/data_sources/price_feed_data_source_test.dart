import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:kraken_crypto_watch/data/data_sources/price_feed_data_source.dart';
import 'package:kraken_crypto_watch/data/facades/price_feed_facade.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'price_feed_data_source_test.mocks.dart';

@GenerateMocks([PriceFeedFacade])
void main() async {
  // Mock dependencies
  MockPriceFeedFacade mockFacade = MockPriceFeedFacade();

  // Mock data
  var mockResult = Completer<void>();
  Exception exception = Exception();

  // Tested instance
  PriceFeedDataSource dataSource = PriceFeedDataSource(mockFacade);

  void _resetCompleter() {
    mockResult = Completer<void>();
    mockResult.complete();
  }

  group('Price feed data source', () {
    test('Connect', () {
      _resetCompleter();
      when(mockFacade.connect())
          .thenAnswer((realInvocation) => mockResult.future);

      expect(dataSource.connect(), completion(equals(null)));
    });

    test('Disconnect', () {
      _resetCompleter();
      when(mockFacade.disconnect())
          .thenAnswer((realInvocation) => mockResult.future);

      expect(dataSource.connect(), completion(equals(null)));
    });

    test('Exception when connecting', () {
      when(mockFacade.connect())
          .thenAnswer((realInvocation) => Future.error(exception));

      expect(dataSource.connect(), throwsA(exception));
    });

    test('Exception when disconnecting', () {
      when(mockFacade.disconnect())
          .thenAnswer((realInvocation) => Future.error(exception));

      expect(dataSource.disconnect(), throwsA(exception));
    });
  });
}
