// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_feed_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PriceFeedEventDTOInfo _$$PriceFeedEventDTOInfoFromJson(
        Map<String, dynamic> json) =>
    _$PriceFeedEventDTOInfo(
      version: json['version'] as int,
      $type: json['event'] as String?,
    );

Map<String, dynamic> _$$PriceFeedEventDTOInfoToJson(
        _$PriceFeedEventDTOInfo instance) =>
    <String, dynamic>{
      'version': instance.version,
      'event': instance.$type,
    };

_$PriceFeedEventDTOSubscribed _$$PriceFeedEventDTOSubscribedFromJson(
        Map<String, dynamic> json) =>
    _$PriceFeedEventDTOSubscribed(
      ids: (json['product_ids'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      price: (json['price'] as num).toDouble(),
      quantity: (json['qty'] as num).toDouble(),
      timestamp: json['timestamp'] as int,
      $type: json['event'] as String?,
    );

Map<String, dynamic> _$$PriceFeedEventDTOSubscribedToJson(
        _$PriceFeedEventDTOSubscribed instance) =>
    <String, dynamic>{
      'product_ids': instance.ids,
      'price': instance.price,
      'qty': instance.quantity,
      'timestamp': instance.timestamp,
      'event': instance.$type,
    };

_$PriceFeedBookDTOSnapshot _$$PriceFeedBookDTOSnapshotFromJson(
        Map<String, dynamic> json) =>
    _$PriceFeedBookDTOSnapshot(
      id: json['product_id'] as String,
      timestamp: json['timestamp'] as int,
      tickSize: json['tickSize'] as int?,
      seq: json['seq'] as int,
      bids: (json['bids'] as List<dynamic>)
          .map((e) => BookEntryDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      asks: (json['asks'] as List<dynamic>)
          .map((e) => BookEntryDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['feed'] as String?,
    );

Map<String, dynamic> _$$PriceFeedBookDTOSnapshotToJson(
        _$PriceFeedBookDTOSnapshot instance) =>
    <String, dynamic>{
      'product_id': instance.id,
      'timestamp': instance.timestamp,
      'tickSize': instance.tickSize,
      'seq': instance.seq,
      'bids': instance.bids,
      'asks': instance.asks,
      'feed': instance.$type,
    };

_$PriceFeedBookDTOBook _$$PriceFeedBookDTOBookFromJson(
        Map<String, dynamic> json) =>
    _$PriceFeedBookDTOBook(
      id: json['product_id'] as String,
      side: json['side'] as String,
      seq: json['seq'] as int,
      price: (json['price'] as num).toDouble(),
      quantity: (json['qty'] as num).toDouble(),
      timestamp: json['timestamp'] as int,
      $type: json['feed'] as String?,
    );

Map<String, dynamic> _$$PriceFeedBookDTOBookToJson(
        _$PriceFeedBookDTOBook instance) =>
    <String, dynamic>{
      'product_id': instance.id,
      'side': instance.side,
      'seq': instance.seq,
      'price': instance.price,
      'qty': instance.quantity,
      'timestamp': instance.timestamp,
      'feed': instance.$type,
    };
