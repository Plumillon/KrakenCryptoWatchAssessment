import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_feed_message.g.dart';

part 'price_feed_message.freezed.dart';

@freezed
class PriceFeedMessage with _$PriceFeedMessage {
  const factory PriceFeedMessage.products(
          {required String event,
          required String feed,
          @JsonKey(name: 'product_ids') required List<String> productIds}) =
      ProductsPriceFeedMessage;

  factory PriceFeedMessage.fromJson(Map<String, dynamic> json) =>
      _$PriceFeedMessageFromJson(json);
}
