import 'dart:async';
import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:kraken_crypto_watch/core/constants.dart';
import 'package:kraken_crypto_watch/data/dtos/price_feed_dto.dart';
import 'package:kraken_crypto_watch/data/dtos/price_feed_message.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

@LazySingleton()
class PriceFeedFacade {
  late WebSocketChannel _channel;

  StreamController<PriceFeedEventDTO> _eventsSubscription = StreamController();

  Stream<PriceFeedEventDTO> get events => _eventsSubscription.stream;

  StreamController<PriceFeedBookDTO> _booksSubscription = StreamController();

  Stream<PriceFeedBookDTO> get books => _booksSubscription.stream;

  PriceFeedFacade() {
    connect();
  }

  void sendProductsMessage({required List<String> tickers}) {
    PriceFeedMessage message = PriceFeedMessage.products(
        event: "subscribe", feed: "book", productIds: tickers);
    _channel.sink.add(jsonEncode(message));
  }

  Future<void> connect() {
    // First close it
    return disconnect().then((_) {
      _open();
      _channel.stream.listen((feed) => _parseFeed(feed));
    });
  }

  Future<dynamic> disconnect() async {
    await _eventsSubscription.close();
    await _booksSubscription.close();

    return _channel.sink.close();
  }

  void _parseFeed(json) {
    dynamic jsonObject = jsonDecode(json);

    try {
      _booksSubscription.add(PriceFeedBookDTO.fromJson(jsonObject));
    } catch (_) {}

    try {
      _eventsSubscription.add(PriceFeedEventDTO.fromJson(jsonObject));
    } catch (_) {}
  }

  void _open() {
    _eventsSubscription = StreamController();
    _booksSubscription = StreamController();
    _channel = WebSocketChannel.connect(Uri.parse(Constants.wsURL));
  }
}
