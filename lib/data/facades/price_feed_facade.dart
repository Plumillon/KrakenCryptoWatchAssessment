import 'dart:async';
import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:kraken_crypto_watch/core/constants.dart';
import 'package:kraken_crypto_watch/data/dtos/price_feed_dto.dart';
import 'package:kraken_crypto_watch/data/dtos/price_feed_message.dart';
import 'package:kraken_crypto_watch/utils/logger.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

@LazySingleton()
class PriceFeedFacade {
  WebSocketChannel? _channel;

  StreamSubscription? _channelSubscription;

  StreamController<PriceFeedEventDTO> _eventsSubscription =
      StreamController.broadcast();

  Stream<PriceFeedEventDTO> get _events => _eventsSubscription.stream;

  StreamController<PriceFeedBookDTO> _booksSubscription =
      StreamController.broadcast();

  Stream<PriceFeedBookDTO> get books => _booksSubscription.stream;

  void sendProductsMessage({required List<String> tickers}) {
    PriceFeedMessage message = PriceFeedMessage.products(
        event: "subscribe", feed: "book", productIds: tickers);
    _channel?.sink.add(jsonEncode(message));
  }

  Future<void> connect() {
    Completer completer = Completer();

    // First close it
    disconnect().then((_) {
      _open();
      _channelSubscription = _channel?.stream
          .asBroadcastStream()
          .map((feed) => _parseFeed(feed))
          .listen((_) {});
    }).then((_) => _events.listen((event) {
          // If we receive an event, it means we are connected
          if (event is PriceFeedEventDTOInfo) {
            if (!completer.isCompleted) {
              completer.complete();
            }
          }
        }));

    return completer.future;
  }

  Future<void> disconnect() async {
    if (!_eventsSubscription.isClosed) {
      await _eventsSubscription.close();
    }

    if (!_booksSubscription.isClosed) {
      await _booksSubscription.close();
    }

    await _channelSubscription?.cancel();
    await _channel?.sink.close();
    _channel = null;

    return Future.value();
  }

  void _parseFeed(json) {
    dynamic jsonObject = jsonDecode(json);

    if (jsonObject['event'] != null) {
      try {
        _eventsSubscription.add(PriceFeedEventDTO.fromJson(jsonObject));
      } catch (e) {
        getLogger().i("Event");
        getLogger().e(e);
      }
    } else if (jsonObject['feed'] != null) {
      try {
        _booksSubscription.add(PriceFeedBookDTO.fromJson(jsonObject));
      } catch (e) {
        getLogger().i("Book");
        getLogger().e(e);
      }
    }
  }

  void _open() {
    _eventsSubscription = StreamController.broadcast();
    _booksSubscription = StreamController.broadcast();
    _channel = WebSocketChannel.connect(Uri.parse(Constants.wsURL));
  }
}
