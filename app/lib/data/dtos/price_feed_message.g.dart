// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_feed_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductsPriceFeedMessage _$$ProductsPriceFeedMessageFromJson(
        Map<String, dynamic> json) =>
    _$ProductsPriceFeedMessage(
      event: json['event'] as String,
      feed: json['feed'] as String,
      productIds: (json['product_ids'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ProductsPriceFeedMessageToJson(
        _$ProductsPriceFeedMessage instance) =>
    <String, dynamic>{
      'event': instance.event,
      'feed': instance.feed,
      'product_ids': instance.productIds,
    };
