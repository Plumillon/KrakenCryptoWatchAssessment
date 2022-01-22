import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kraken_crypto_watch/data/dtos/book_entry_dto.dart';

part 'price_feed_dto.freezed.dart';
part 'price_feed_dto.g.dart';

@Freezed(unionKey: 'event', unionValueCase: FreezedUnionCase.none)
class PriceFeedEventDTO with _$PriceFeedEventDTO {
  const factory PriceFeedEventDTO.info({required int version}) =
      PriceFeedEventDTOInfo;

  const factory PriceFeedEventDTO.subscribed(
      {@JsonKey(name: 'product_ids') required List<String> ids,
      required double price,
      @JsonKey(name: 'qty') required double quantity,
      required int timestamp}) = PriceFeedEventDTOSubscribed;

  factory PriceFeedEventDTO.fromJson(Map<String, dynamic> json) =>
      _$PriceFeedEventDTOFromJson(json);
}

@Freezed(unionKey: 'feed', unionValueCase: FreezedUnionCase.none)
class PriceFeedBookDTO with _$PriceFeedBookDTO {
  @FreezedUnionValue('book_snapshot')
  const factory PriceFeedBookDTO.snapshot(
      {@JsonKey(name: 'product_id') required String id,
      required int timestamp,
      int? tickSize,
      required int seq,
      required List<BookEntryDTO> bids,
      required List<BookEntryDTO> asks}) = PriceFeedBookDTOSnapshot;

  const factory PriceFeedBookDTO.book(
      {@JsonKey(name: 'product_id') required String id,
      required String side,
      required int seq,
      required double price,
      @JsonKey(name: 'qty') required double quantity,
      required int timestamp}) = PriceFeedBookDTOBook;

  factory PriceFeedBookDTO.fromJson(Map<String, dynamic> json) =>
      _$PriceFeedBookDTOFromJson(json);
}
