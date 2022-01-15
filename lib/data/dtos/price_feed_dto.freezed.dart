// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'price_feed_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PriceFeedEventDTO _$PriceFeedEventDTOFromJson(Map<String, dynamic> json) {
  switch (json['event']) {
    case 'info':
      return PriceFeedEventDTOInfo.fromJson(json);
    case 'subscribed':
      return PriceFeedEventDTOSubscribed.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'event', 'PriceFeedEventDTO',
          'Invalid union type "${json['event']}"!');
  }
}

/// @nodoc
class _$PriceFeedEventDTOTearOff {
  const _$PriceFeedEventDTOTearOff();

  PriceFeedEventDTOInfo info({required int version}) {
    return PriceFeedEventDTOInfo(
      version: version,
    );
  }

  PriceFeedEventDTOSubscribed subscribed(
      {@JsonKey(name: 'product_id') required List<String> ids,
      required double price,
      @JsonKey(name: 'qty') required double quantity,
      required int timestamp}) {
    return PriceFeedEventDTOSubscribed(
      ids: ids,
      price: price,
      quantity: quantity,
      timestamp: timestamp,
    );
  }

  PriceFeedEventDTO fromJson(Map<String, Object?> json) {
    return PriceFeedEventDTO.fromJson(json);
  }
}

/// @nodoc
const $PriceFeedEventDTO = _$PriceFeedEventDTOTearOff();

/// @nodoc
mixin _$PriceFeedEventDTO {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int version) info,
    required TResult Function(@JsonKey(name: 'product_id') List<String> ids,
            double price, @JsonKey(name: 'qty') double quantity, int timestamp)
        subscribed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int version)? info,
    TResult Function(@JsonKey(name: 'product_id') List<String> ids,
            double price, @JsonKey(name: 'qty') double quantity, int timestamp)?
        subscribed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int version)? info,
    TResult Function(@JsonKey(name: 'product_id') List<String> ids,
            double price, @JsonKey(name: 'qty') double quantity, int timestamp)?
        subscribed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PriceFeedEventDTOInfo value) info,
    required TResult Function(PriceFeedEventDTOSubscribed value) subscribed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PriceFeedEventDTOInfo value)? info,
    TResult Function(PriceFeedEventDTOSubscribed value)? subscribed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PriceFeedEventDTOInfo value)? info,
    TResult Function(PriceFeedEventDTOSubscribed value)? subscribed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceFeedEventDTOCopyWith<$Res> {
  factory $PriceFeedEventDTOCopyWith(
          PriceFeedEventDTO value, $Res Function(PriceFeedEventDTO) then) =
      _$PriceFeedEventDTOCopyWithImpl<$Res>;
}

/// @nodoc
class _$PriceFeedEventDTOCopyWithImpl<$Res>
    implements $PriceFeedEventDTOCopyWith<$Res> {
  _$PriceFeedEventDTOCopyWithImpl(this._value, this._then);

  final PriceFeedEventDTO _value;
  // ignore: unused_field
  final $Res Function(PriceFeedEventDTO) _then;
}

/// @nodoc
abstract class $PriceFeedEventDTOInfoCopyWith<$Res> {
  factory $PriceFeedEventDTOInfoCopyWith(PriceFeedEventDTOInfo value,
          $Res Function(PriceFeedEventDTOInfo) then) =
      _$PriceFeedEventDTOInfoCopyWithImpl<$Res>;
  $Res call({int version});
}

/// @nodoc
class _$PriceFeedEventDTOInfoCopyWithImpl<$Res>
    extends _$PriceFeedEventDTOCopyWithImpl<$Res>
    implements $PriceFeedEventDTOInfoCopyWith<$Res> {
  _$PriceFeedEventDTOInfoCopyWithImpl(
      PriceFeedEventDTOInfo _value, $Res Function(PriceFeedEventDTOInfo) _then)
      : super(_value, (v) => _then(v as PriceFeedEventDTOInfo));

  @override
  PriceFeedEventDTOInfo get _value => super._value as PriceFeedEventDTOInfo;

  @override
  $Res call({
    Object? version = freezed,
  }) {
    return _then(PriceFeedEventDTOInfo(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PriceFeedEventDTOInfo implements PriceFeedEventDTOInfo {
  const _$PriceFeedEventDTOInfo({required this.version, String? $type})
      : $type = $type ?? 'info';

  factory _$PriceFeedEventDTOInfo.fromJson(Map<String, dynamic> json) =>
      _$$PriceFeedEventDTOInfoFromJson(json);

  @override
  final int version;

  @JsonKey(name: 'event')
  final String $type;

  @override
  String toString() {
    return 'PriceFeedEventDTO.info(version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PriceFeedEventDTOInfo &&
            const DeepCollectionEquality().equals(other.version, version));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(version));

  @JsonKey(ignore: true)
  @override
  $PriceFeedEventDTOInfoCopyWith<PriceFeedEventDTOInfo> get copyWith =>
      _$PriceFeedEventDTOInfoCopyWithImpl<PriceFeedEventDTOInfo>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int version) info,
    required TResult Function(@JsonKey(name: 'product_id') List<String> ids,
            double price, @JsonKey(name: 'qty') double quantity, int timestamp)
        subscribed,
  }) {
    return info(version);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int version)? info,
    TResult Function(@JsonKey(name: 'product_id') List<String> ids,
            double price, @JsonKey(name: 'qty') double quantity, int timestamp)?
        subscribed,
  }) {
    return info?.call(version);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int version)? info,
    TResult Function(@JsonKey(name: 'product_id') List<String> ids,
            double price, @JsonKey(name: 'qty') double quantity, int timestamp)?
        subscribed,
    required TResult orElse(),
  }) {
    if (info != null) {
      return info(version);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PriceFeedEventDTOInfo value) info,
    required TResult Function(PriceFeedEventDTOSubscribed value) subscribed,
  }) {
    return info(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PriceFeedEventDTOInfo value)? info,
    TResult Function(PriceFeedEventDTOSubscribed value)? subscribed,
  }) {
    return info?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PriceFeedEventDTOInfo value)? info,
    TResult Function(PriceFeedEventDTOSubscribed value)? subscribed,
    required TResult orElse(),
  }) {
    if (info != null) {
      return info(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceFeedEventDTOInfoToJson(this);
  }
}

abstract class PriceFeedEventDTOInfo implements PriceFeedEventDTO {
  const factory PriceFeedEventDTOInfo({required int version}) =
      _$PriceFeedEventDTOInfo;

  factory PriceFeedEventDTOInfo.fromJson(Map<String, dynamic> json) =
      _$PriceFeedEventDTOInfo.fromJson;

  int get version;
  @JsonKey(ignore: true)
  $PriceFeedEventDTOInfoCopyWith<PriceFeedEventDTOInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceFeedEventDTOSubscribedCopyWith<$Res> {
  factory $PriceFeedEventDTOSubscribedCopyWith(
          PriceFeedEventDTOSubscribed value,
          $Res Function(PriceFeedEventDTOSubscribed) then) =
      _$PriceFeedEventDTOSubscribedCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'product_id') List<String> ids,
      double price,
      @JsonKey(name: 'qty') double quantity,
      int timestamp});
}

/// @nodoc
class _$PriceFeedEventDTOSubscribedCopyWithImpl<$Res>
    extends _$PriceFeedEventDTOCopyWithImpl<$Res>
    implements $PriceFeedEventDTOSubscribedCopyWith<$Res> {
  _$PriceFeedEventDTOSubscribedCopyWithImpl(PriceFeedEventDTOSubscribed _value,
      $Res Function(PriceFeedEventDTOSubscribed) _then)
      : super(_value, (v) => _then(v as PriceFeedEventDTOSubscribed));

  @override
  PriceFeedEventDTOSubscribed get _value =>
      super._value as PriceFeedEventDTOSubscribed;

  @override
  $Res call({
    Object? ids = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(PriceFeedEventDTOSubscribed(
      ids: ids == freezed
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PriceFeedEventDTOSubscribed implements PriceFeedEventDTOSubscribed {
  const _$PriceFeedEventDTOSubscribed(
      {@JsonKey(name: 'product_id') required this.ids,
      required this.price,
      @JsonKey(name: 'qty') required this.quantity,
      required this.timestamp,
      String? $type})
      : $type = $type ?? 'subscribed';

  factory _$PriceFeedEventDTOSubscribed.fromJson(Map<String, dynamic> json) =>
      _$$PriceFeedEventDTOSubscribedFromJson(json);

  @override
  @JsonKey(name: 'product_id')
  final List<String> ids;
  @override
  final double price;
  @override
  @JsonKey(name: 'qty')
  final double quantity;
  @override
  final int timestamp;

  @JsonKey(name: 'event')
  final String $type;

  @override
  String toString() {
    return 'PriceFeedEventDTO.subscribed(ids: $ids, price: $price, quantity: $quantity, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PriceFeedEventDTOSubscribed &&
            const DeepCollectionEquality().equals(other.ids, ids) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ids),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(timestamp));

  @JsonKey(ignore: true)
  @override
  $PriceFeedEventDTOSubscribedCopyWith<PriceFeedEventDTOSubscribed>
      get copyWith => _$PriceFeedEventDTOSubscribedCopyWithImpl<
          PriceFeedEventDTOSubscribed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int version) info,
    required TResult Function(@JsonKey(name: 'product_id') List<String> ids,
            double price, @JsonKey(name: 'qty') double quantity, int timestamp)
        subscribed,
  }) {
    return subscribed(ids, price, quantity, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int version)? info,
    TResult Function(@JsonKey(name: 'product_id') List<String> ids,
            double price, @JsonKey(name: 'qty') double quantity, int timestamp)?
        subscribed,
  }) {
    return subscribed?.call(ids, price, quantity, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int version)? info,
    TResult Function(@JsonKey(name: 'product_id') List<String> ids,
            double price, @JsonKey(name: 'qty') double quantity, int timestamp)?
        subscribed,
    required TResult orElse(),
  }) {
    if (subscribed != null) {
      return subscribed(ids, price, quantity, timestamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PriceFeedEventDTOInfo value) info,
    required TResult Function(PriceFeedEventDTOSubscribed value) subscribed,
  }) {
    return subscribed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PriceFeedEventDTOInfo value)? info,
    TResult Function(PriceFeedEventDTOSubscribed value)? subscribed,
  }) {
    return subscribed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PriceFeedEventDTOInfo value)? info,
    TResult Function(PriceFeedEventDTOSubscribed value)? subscribed,
    required TResult orElse(),
  }) {
    if (subscribed != null) {
      return subscribed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceFeedEventDTOSubscribedToJson(this);
  }
}

abstract class PriceFeedEventDTOSubscribed implements PriceFeedEventDTO {
  const factory PriceFeedEventDTOSubscribed(
      {@JsonKey(name: 'product_id') required List<String> ids,
      required double price,
      @JsonKey(name: 'qty') required double quantity,
      required int timestamp}) = _$PriceFeedEventDTOSubscribed;

  factory PriceFeedEventDTOSubscribed.fromJson(Map<String, dynamic> json) =
      _$PriceFeedEventDTOSubscribed.fromJson;

  @JsonKey(name: 'product_id')
  List<String> get ids;
  double get price;
  @JsonKey(name: 'qty')
  double get quantity;
  int get timestamp;
  @JsonKey(ignore: true)
  $PriceFeedEventDTOSubscribedCopyWith<PriceFeedEventDTOSubscribed>
      get copyWith => throw _privateConstructorUsedError;
}

PriceFeedBookDTO _$PriceFeedBookDTOFromJson(Map<String, dynamic> json) {
  switch (json['feed']) {
    case 'book_snapshot':
      return PriceFeedBookDTOSnapshot.fromJson(json);
    case 'book':
      return PriceFeedBookDTOBook.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'feed', 'PriceFeedBookDTO',
          'Invalid union type "${json['feed']}"!');
  }
}

/// @nodoc
class _$PriceFeedBookDTOTearOff {
  const _$PriceFeedBookDTOTearOff();

  PriceFeedBookDTOSnapshot snapshot(
      {@JsonKey(name: 'product_ids') required List<String> ids,
      required int timestamp,
      int? tickSize,
      required int seq,
      required List<BookEntryDTO> bids,
      required List<BookEntryDTO> asks}) {
    return PriceFeedBookDTOSnapshot(
      ids: ids,
      timestamp: timestamp,
      tickSize: tickSize,
      seq: seq,
      bids: bids,
      asks: asks,
    );
  }

  PriceFeedBookDTOBook book(
      {@JsonKey(name: 'product_id') required String id,
      required String side,
      required int seq,
      required double price,
      @JsonKey(name: 'qty') required double quantity,
      required int timestamp}) {
    return PriceFeedBookDTOBook(
      id: id,
      side: side,
      seq: seq,
      price: price,
      quantity: quantity,
      timestamp: timestamp,
    );
  }

  PriceFeedBookDTO fromJson(Map<String, Object?> json) {
    return PriceFeedBookDTO.fromJson(json);
  }
}

/// @nodoc
const $PriceFeedBookDTO = _$PriceFeedBookDTOTearOff();

/// @nodoc
mixin _$PriceFeedBookDTO {
  int get timestamp => throw _privateConstructorUsedError;
  int get seq => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'product_ids') List<String> ids,
            int timestamp,
            int? tickSize,
            int seq,
            List<BookEntryDTO> bids,
            List<BookEntryDTO> asks)
        snapshot,
    required TResult Function(
            @JsonKey(name: 'product_id') String id,
            String side,
            int seq,
            double price,
            @JsonKey(name: 'qty') double quantity,
            int timestamp)
        book,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'product_ids') List<String> ids,
            int timestamp,
            int? tickSize,
            int seq,
            List<BookEntryDTO> bids,
            List<BookEntryDTO> asks)?
        snapshot,
    TResult Function(
            @JsonKey(name: 'product_id') String id,
            String side,
            int seq,
            double price,
            @JsonKey(name: 'qty') double quantity,
            int timestamp)?
        book,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'product_ids') List<String> ids,
            int timestamp,
            int? tickSize,
            int seq,
            List<BookEntryDTO> bids,
            List<BookEntryDTO> asks)?
        snapshot,
    TResult Function(
            @JsonKey(name: 'product_id') String id,
            String side,
            int seq,
            double price,
            @JsonKey(name: 'qty') double quantity,
            int timestamp)?
        book,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PriceFeedBookDTOSnapshot value) snapshot,
    required TResult Function(PriceFeedBookDTOBook value) book,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PriceFeedBookDTOSnapshot value)? snapshot,
    TResult Function(PriceFeedBookDTOBook value)? book,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PriceFeedBookDTOSnapshot value)? snapshot,
    TResult Function(PriceFeedBookDTOBook value)? book,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceFeedBookDTOCopyWith<PriceFeedBookDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceFeedBookDTOCopyWith<$Res> {
  factory $PriceFeedBookDTOCopyWith(
          PriceFeedBookDTO value, $Res Function(PriceFeedBookDTO) then) =
      _$PriceFeedBookDTOCopyWithImpl<$Res>;
  $Res call({int timestamp, int seq});
}

/// @nodoc
class _$PriceFeedBookDTOCopyWithImpl<$Res>
    implements $PriceFeedBookDTOCopyWith<$Res> {
  _$PriceFeedBookDTOCopyWithImpl(this._value, this._then);

  final PriceFeedBookDTO _value;
  // ignore: unused_field
  final $Res Function(PriceFeedBookDTO) _then;

  @override
  $Res call({
    Object? timestamp = freezed,
    Object? seq = freezed,
  }) {
    return _then(_value.copyWith(
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      seq: seq == freezed
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $PriceFeedBookDTOSnapshotCopyWith<$Res>
    implements $PriceFeedBookDTOCopyWith<$Res> {
  factory $PriceFeedBookDTOSnapshotCopyWith(PriceFeedBookDTOSnapshot value,
          $Res Function(PriceFeedBookDTOSnapshot) then) =
      _$PriceFeedBookDTOSnapshotCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'product_ids') List<String> ids,
      int timestamp,
      int? tickSize,
      int seq,
      List<BookEntryDTO> bids,
      List<BookEntryDTO> asks});
}

/// @nodoc
class _$PriceFeedBookDTOSnapshotCopyWithImpl<$Res>
    extends _$PriceFeedBookDTOCopyWithImpl<$Res>
    implements $PriceFeedBookDTOSnapshotCopyWith<$Res> {
  _$PriceFeedBookDTOSnapshotCopyWithImpl(PriceFeedBookDTOSnapshot _value,
      $Res Function(PriceFeedBookDTOSnapshot) _then)
      : super(_value, (v) => _then(v as PriceFeedBookDTOSnapshot));

  @override
  PriceFeedBookDTOSnapshot get _value =>
      super._value as PriceFeedBookDTOSnapshot;

  @override
  $Res call({
    Object? ids = freezed,
    Object? timestamp = freezed,
    Object? tickSize = freezed,
    Object? seq = freezed,
    Object? bids = freezed,
    Object? asks = freezed,
  }) {
    return _then(PriceFeedBookDTOSnapshot(
      ids: ids == freezed
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      tickSize: tickSize == freezed
          ? _value.tickSize
          : tickSize // ignore: cast_nullable_to_non_nullable
              as int?,
      seq: seq == freezed
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      bids: bids == freezed
          ? _value.bids
          : bids // ignore: cast_nullable_to_non_nullable
              as List<BookEntryDTO>,
      asks: asks == freezed
          ? _value.asks
          : asks // ignore: cast_nullable_to_non_nullable
              as List<BookEntryDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('book_snapshot')
class _$PriceFeedBookDTOSnapshot implements PriceFeedBookDTOSnapshot {
  const _$PriceFeedBookDTOSnapshot(
      {@JsonKey(name: 'product_ids') required this.ids,
      required this.timestamp,
      this.tickSize,
      required this.seq,
      required this.bids,
      required this.asks,
      String? $type})
      : $type = $type ?? 'book_snapshot';

  factory _$PriceFeedBookDTOSnapshot.fromJson(Map<String, dynamic> json) =>
      _$$PriceFeedBookDTOSnapshotFromJson(json);

  @override
  @JsonKey(name: 'product_ids')
  final List<String> ids;
  @override
  final int timestamp;
  @override
  final int? tickSize;
  @override
  final int seq;
  @override
  final List<BookEntryDTO> bids;
  @override
  final List<BookEntryDTO> asks;

  @JsonKey(name: 'feed')
  final String $type;

  @override
  String toString() {
    return 'PriceFeedBookDTO.snapshot(ids: $ids, timestamp: $timestamp, tickSize: $tickSize, seq: $seq, bids: $bids, asks: $asks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PriceFeedBookDTOSnapshot &&
            const DeepCollectionEquality().equals(other.ids, ids) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp) &&
            const DeepCollectionEquality().equals(other.tickSize, tickSize) &&
            const DeepCollectionEquality().equals(other.seq, seq) &&
            const DeepCollectionEquality().equals(other.bids, bids) &&
            const DeepCollectionEquality().equals(other.asks, asks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ids),
      const DeepCollectionEquality().hash(timestamp),
      const DeepCollectionEquality().hash(tickSize),
      const DeepCollectionEquality().hash(seq),
      const DeepCollectionEquality().hash(bids),
      const DeepCollectionEquality().hash(asks));

  @JsonKey(ignore: true)
  @override
  $PriceFeedBookDTOSnapshotCopyWith<PriceFeedBookDTOSnapshot> get copyWith =>
      _$PriceFeedBookDTOSnapshotCopyWithImpl<PriceFeedBookDTOSnapshot>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'product_ids') List<String> ids,
            int timestamp,
            int? tickSize,
            int seq,
            List<BookEntryDTO> bids,
            List<BookEntryDTO> asks)
        snapshot,
    required TResult Function(
            @JsonKey(name: 'product_id') String id,
            String side,
            int seq,
            double price,
            @JsonKey(name: 'qty') double quantity,
            int timestamp)
        book,
  }) {
    return snapshot(ids, timestamp, tickSize, seq, bids, asks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'product_ids') List<String> ids,
            int timestamp,
            int? tickSize,
            int seq,
            List<BookEntryDTO> bids,
            List<BookEntryDTO> asks)?
        snapshot,
    TResult Function(
            @JsonKey(name: 'product_id') String id,
            String side,
            int seq,
            double price,
            @JsonKey(name: 'qty') double quantity,
            int timestamp)?
        book,
  }) {
    return snapshot?.call(ids, timestamp, tickSize, seq, bids, asks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'product_ids') List<String> ids,
            int timestamp,
            int? tickSize,
            int seq,
            List<BookEntryDTO> bids,
            List<BookEntryDTO> asks)?
        snapshot,
    TResult Function(
            @JsonKey(name: 'product_id') String id,
            String side,
            int seq,
            double price,
            @JsonKey(name: 'qty') double quantity,
            int timestamp)?
        book,
    required TResult orElse(),
  }) {
    if (snapshot != null) {
      return snapshot(ids, timestamp, tickSize, seq, bids, asks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PriceFeedBookDTOSnapshot value) snapshot,
    required TResult Function(PriceFeedBookDTOBook value) book,
  }) {
    return snapshot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PriceFeedBookDTOSnapshot value)? snapshot,
    TResult Function(PriceFeedBookDTOBook value)? book,
  }) {
    return snapshot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PriceFeedBookDTOSnapshot value)? snapshot,
    TResult Function(PriceFeedBookDTOBook value)? book,
    required TResult orElse(),
  }) {
    if (snapshot != null) {
      return snapshot(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceFeedBookDTOSnapshotToJson(this);
  }
}

abstract class PriceFeedBookDTOSnapshot implements PriceFeedBookDTO {
  const factory PriceFeedBookDTOSnapshot(
      {@JsonKey(name: 'product_ids') required List<String> ids,
      required int timestamp,
      int? tickSize,
      required int seq,
      required List<BookEntryDTO> bids,
      required List<BookEntryDTO> asks}) = _$PriceFeedBookDTOSnapshot;

  factory PriceFeedBookDTOSnapshot.fromJson(Map<String, dynamic> json) =
      _$PriceFeedBookDTOSnapshot.fromJson;

  @JsonKey(name: 'product_ids')
  List<String> get ids;
  @override
  int get timestamp;
  int? get tickSize;
  @override
  int get seq;
  List<BookEntryDTO> get bids;
  List<BookEntryDTO> get asks;
  @override
  @JsonKey(ignore: true)
  $PriceFeedBookDTOSnapshotCopyWith<PriceFeedBookDTOSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceFeedBookDTOBookCopyWith<$Res>
    implements $PriceFeedBookDTOCopyWith<$Res> {
  factory $PriceFeedBookDTOBookCopyWith(PriceFeedBookDTOBook value,
          $Res Function(PriceFeedBookDTOBook) then) =
      _$PriceFeedBookDTOBookCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'product_id') String id,
      String side,
      int seq,
      double price,
      @JsonKey(name: 'qty') double quantity,
      int timestamp});
}

/// @nodoc
class _$PriceFeedBookDTOBookCopyWithImpl<$Res>
    extends _$PriceFeedBookDTOCopyWithImpl<$Res>
    implements $PriceFeedBookDTOBookCopyWith<$Res> {
  _$PriceFeedBookDTOBookCopyWithImpl(
      PriceFeedBookDTOBook _value, $Res Function(PriceFeedBookDTOBook) _then)
      : super(_value, (v) => _then(v as PriceFeedBookDTOBook));

  @override
  PriceFeedBookDTOBook get _value => super._value as PriceFeedBookDTOBook;

  @override
  $Res call({
    Object? id = freezed,
    Object? side = freezed,
    Object? seq = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(PriceFeedBookDTOBook(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      side: side == freezed
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as String,
      seq: seq == freezed
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PriceFeedBookDTOBook implements PriceFeedBookDTOBook {
  const _$PriceFeedBookDTOBook(
      {@JsonKey(name: 'product_id') required this.id,
      required this.side,
      required this.seq,
      required this.price,
      @JsonKey(name: 'qty') required this.quantity,
      required this.timestamp,
      String? $type})
      : $type = $type ?? 'book';

  factory _$PriceFeedBookDTOBook.fromJson(Map<String, dynamic> json) =>
      _$$PriceFeedBookDTOBookFromJson(json);

  @override
  @JsonKey(name: 'product_id')
  final String id;
  @override
  final String side;
  @override
  final int seq;
  @override
  final double price;
  @override
  @JsonKey(name: 'qty')
  final double quantity;
  @override
  final int timestamp;

  @JsonKey(name: 'feed')
  final String $type;

  @override
  String toString() {
    return 'PriceFeedBookDTO.book(id: $id, side: $side, seq: $seq, price: $price, quantity: $quantity, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PriceFeedBookDTOBook &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.side, side) &&
            const DeepCollectionEquality().equals(other.seq, seq) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(side),
      const DeepCollectionEquality().hash(seq),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(timestamp));

  @JsonKey(ignore: true)
  @override
  $PriceFeedBookDTOBookCopyWith<PriceFeedBookDTOBook> get copyWith =>
      _$PriceFeedBookDTOBookCopyWithImpl<PriceFeedBookDTOBook>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'product_ids') List<String> ids,
            int timestamp,
            int? tickSize,
            int seq,
            List<BookEntryDTO> bids,
            List<BookEntryDTO> asks)
        snapshot,
    required TResult Function(
            @JsonKey(name: 'product_id') String id,
            String side,
            int seq,
            double price,
            @JsonKey(name: 'qty') double quantity,
            int timestamp)
        book,
  }) {
    return book(id, side, seq, price, quantity, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'product_ids') List<String> ids,
            int timestamp,
            int? tickSize,
            int seq,
            List<BookEntryDTO> bids,
            List<BookEntryDTO> asks)?
        snapshot,
    TResult Function(
            @JsonKey(name: 'product_id') String id,
            String side,
            int seq,
            double price,
            @JsonKey(name: 'qty') double quantity,
            int timestamp)?
        book,
  }) {
    return book?.call(id, side, seq, price, quantity, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'product_ids') List<String> ids,
            int timestamp,
            int? tickSize,
            int seq,
            List<BookEntryDTO> bids,
            List<BookEntryDTO> asks)?
        snapshot,
    TResult Function(
            @JsonKey(name: 'product_id') String id,
            String side,
            int seq,
            double price,
            @JsonKey(name: 'qty') double quantity,
            int timestamp)?
        book,
    required TResult orElse(),
  }) {
    if (book != null) {
      return book(id, side, seq, price, quantity, timestamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PriceFeedBookDTOSnapshot value) snapshot,
    required TResult Function(PriceFeedBookDTOBook value) book,
  }) {
    return book(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PriceFeedBookDTOSnapshot value)? snapshot,
    TResult Function(PriceFeedBookDTOBook value)? book,
  }) {
    return book?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PriceFeedBookDTOSnapshot value)? snapshot,
    TResult Function(PriceFeedBookDTOBook value)? book,
    required TResult orElse(),
  }) {
    if (book != null) {
      return book(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceFeedBookDTOBookToJson(this);
  }
}

abstract class PriceFeedBookDTOBook implements PriceFeedBookDTO {
  const factory PriceFeedBookDTOBook(
      {@JsonKey(name: 'product_id') required String id,
      required String side,
      required int seq,
      required double price,
      @JsonKey(name: 'qty') required double quantity,
      required int timestamp}) = _$PriceFeedBookDTOBook;

  factory PriceFeedBookDTOBook.fromJson(Map<String, dynamic> json) =
      _$PriceFeedBookDTOBook.fromJson;

  @JsonKey(name: 'product_id')
  String get id;
  String get side;
  @override
  int get seq;
  double get price;
  @JsonKey(name: 'qty')
  double get quantity;
  @override
  int get timestamp;
  @override
  @JsonKey(ignore: true)
  $PriceFeedBookDTOBookCopyWith<PriceFeedBookDTOBook> get copyWith =>
      throw _privateConstructorUsedError;
}
