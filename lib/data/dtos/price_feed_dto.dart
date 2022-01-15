// {"feed":"book","product_id":"PI_XBTUSD","side":"sell","seq":1014322621,"price":41843.0,"qty":0.0,"timestamp":1641896986470}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kraken_crypto_watch/data/dtos/book_entry_dto.dart';

part 'price_feed_dto.freezed.dart';
part 'price_feed_dto.g.dart';

// class PriceFeedConverter
//     implements JsonConverter<PriceFeedDTO, Map<String, dynamic>> {
//   const PriceFeedConverter();
//
//   @override
//   PriceFeedDTO fromJson(Map<String, dynamic> json) {
//     // type data was already set (e.g. because we serialized it ourselves)
//     if (json['event'] != null) {
//       if (json['event'] == 'info') {
//         return PriceFeedDTOInfo.fromJson(json);
//       } else if (json['event'] == 'subscribed') {
//         return PriceFeedDTOSubscribed.fromJson(json);
//       } else {
//         throw ParsePriceFeedException("Unknown event type $json['event']");
//       }
//     }
//     // you need to find some condition to know which type it is. e.g. check the presence of some field in the json
//     if (json['feed'] != null) {
//       if (json['feed'] == 'book_snapshot') {
//         return PriceFeedDTOSnapshot.fromJson(json);
//       } else if (json['feed'] == 'book') {
//         return PriceFeedDTOBook.fromJson(json);
//       } else {
//         throw ParsePriceFeedException("Unknown feed type $json['feed']");
//       }
//     }
//   }
//
//   @override
//   Map<String, dynamic> toJson(PriceFeedDTO data) => data.toJson();
// }

@Freezed(unionKey: 'event', unionValueCase: FreezedUnionCase.none)
class PriceFeedEventDTO with _$PriceFeedEventDTO {
  const factory PriceFeedEventDTO.info({required int version}) =
      PriceFeedEventDTOInfo;

  const factory PriceFeedEventDTO.subscribed(
      {@JsonKey(name: 'product_id') required List<String> ids,
      required double price,
      @JsonKey(name: 'qty') required double quantity,
      required int timestamp}) = PriceFeedEventDTOSubscribed;

  factory PriceFeedEventDTO.fromJson(Map<String, dynamic> json) => _$PriceFeedEventDTOFromJson(json);
}

@Freezed(unionKey: 'feed', unionValueCase: FreezedUnionCase.none)
class PriceFeedBookDTO with _$PriceFeedBookDTO {
  @FreezedUnionValue('book_snapshot')
  const factory PriceFeedBookDTO.snapshot(
      {@JsonKey(name: 'product_ids') required List<String> ids,
      required int timestamp,
      int? tickSize,
      required int seq,
      required List<BookEntryDTO> bids,
      required List<BookEntryDTO> asks
      }) = PriceFeedBookDTOSnapshot;

  const factory PriceFeedBookDTO.book(
      {@JsonKey(name: 'product_id') required String id,
      required String side,
      required int seq,
      required double price,
      @JsonKey(name: 'qty') required double quantity,
      required int timestamp}) = PriceFeedBookDTOBook;

  factory PriceFeedBookDTO.fromJson(Map<String, dynamic> json) => _$PriceFeedBookDTOFromJson(json);
}
