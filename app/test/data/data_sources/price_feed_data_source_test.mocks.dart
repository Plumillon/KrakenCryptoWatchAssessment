// Mocks generated by Mockito 5.0.17 from annotations
// in kraken_crypto_watch/test/data/data_sources/price_feed_data_source_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:kraken_crypto_watch/data/dtos/price_feed_dto.dart' as _i4;
import 'package:kraken_crypto_watch/data/facades/price_feed_facade.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

/// A class which mocks [PriceFeedFacade].
///
/// See the documentation for Mockito's code generation for more information.
class MockPriceFeedFacade extends _i1.Mock implements _i2.PriceFeedFacade {
  MockPriceFeedFacade() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Stream<_i4.PriceFeedBookDTO> get books =>
      (super.noSuchMethod(Invocation.getter(#books),
              returnValue: Stream<_i4.PriceFeedBookDTO>.empty())
          as _i3.Stream<_i4.PriceFeedBookDTO>);
  @override
  void sendProductsMessage({List<String>? tickers}) => super.noSuchMethod(
      Invocation.method(#sendProductsMessage, [], {#tickers: tickers}),
      returnValueForMissingStub: null);
  @override
  _i3.Future<void> connect() =>
      (super.noSuchMethod(Invocation.method(#connect, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> disconnect() =>
      (super.noSuchMethod(Invocation.method(#disconnect, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
}