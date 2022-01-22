// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'price_feed_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PriceFeedMessage _$PriceFeedMessageFromJson(Map<String, dynamic> json) {
  return ProductsPriceFeedMessage.fromJson(json);
}

/// @nodoc
class _$PriceFeedMessageTearOff {
  const _$PriceFeedMessageTearOff();

  ProductsPriceFeedMessage products(
      {required String event,
      required String feed,
      @JsonKey(name: 'product_ids') required List<String> productIds}) {
    return ProductsPriceFeedMessage(
      event: event,
      feed: feed,
      productIds: productIds,
    );
  }

  PriceFeedMessage fromJson(Map<String, Object?> json) {
    return PriceFeedMessage.fromJson(json);
  }
}

/// @nodoc
const $PriceFeedMessage = _$PriceFeedMessageTearOff();

/// @nodoc
mixin _$PriceFeedMessage {
  String get event => throw _privateConstructorUsedError;
  String get feed => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_ids')
  List<String> get productIds => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String event, String feed,
            @JsonKey(name: 'product_ids') List<String> productIds)
        products,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String event, String feed,
            @JsonKey(name: 'product_ids') List<String> productIds)?
        products,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String event, String feed,
            @JsonKey(name: 'product_ids') List<String> productIds)?
        products,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsPriceFeedMessage value) products,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductsPriceFeedMessage value)? products,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsPriceFeedMessage value)? products,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceFeedMessageCopyWith<PriceFeedMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceFeedMessageCopyWith<$Res> {
  factory $PriceFeedMessageCopyWith(
          PriceFeedMessage value, $Res Function(PriceFeedMessage) then) =
      _$PriceFeedMessageCopyWithImpl<$Res>;
  $Res call(
      {String event,
      String feed,
      @JsonKey(name: 'product_ids') List<String> productIds});
}

/// @nodoc
class _$PriceFeedMessageCopyWithImpl<$Res>
    implements $PriceFeedMessageCopyWith<$Res> {
  _$PriceFeedMessageCopyWithImpl(this._value, this._then);

  final PriceFeedMessage _value;
  // ignore: unused_field
  final $Res Function(PriceFeedMessage) _then;

  @override
  $Res call({
    Object? event = freezed,
    Object? feed = freezed,
    Object? productIds = freezed,
  }) {
    return _then(_value.copyWith(
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
      feed: feed == freezed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as String,
      productIds: productIds == freezed
          ? _value.productIds
          : productIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class $ProductsPriceFeedMessageCopyWith<$Res>
    implements $PriceFeedMessageCopyWith<$Res> {
  factory $ProductsPriceFeedMessageCopyWith(ProductsPriceFeedMessage value,
          $Res Function(ProductsPriceFeedMessage) then) =
      _$ProductsPriceFeedMessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String event,
      String feed,
      @JsonKey(name: 'product_ids') List<String> productIds});
}

/// @nodoc
class _$ProductsPriceFeedMessageCopyWithImpl<$Res>
    extends _$PriceFeedMessageCopyWithImpl<$Res>
    implements $ProductsPriceFeedMessageCopyWith<$Res> {
  _$ProductsPriceFeedMessageCopyWithImpl(ProductsPriceFeedMessage _value,
      $Res Function(ProductsPriceFeedMessage) _then)
      : super(_value, (v) => _then(v as ProductsPriceFeedMessage));

  @override
  ProductsPriceFeedMessage get _value =>
      super._value as ProductsPriceFeedMessage;

  @override
  $Res call({
    Object? event = freezed,
    Object? feed = freezed,
    Object? productIds = freezed,
  }) {
    return _then(ProductsPriceFeedMessage(
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
      feed: feed == freezed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as String,
      productIds: productIds == freezed
          ? _value.productIds
          : productIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsPriceFeedMessage implements ProductsPriceFeedMessage {
  const _$ProductsPriceFeedMessage(
      {required this.event,
      required this.feed,
      @JsonKey(name: 'product_ids') required this.productIds});

  factory _$ProductsPriceFeedMessage.fromJson(Map<String, dynamic> json) =>
      _$$ProductsPriceFeedMessageFromJson(json);

  @override
  final String event;
  @override
  final String feed;
  @override
  @JsonKey(name: 'product_ids')
  final List<String> productIds;

  @override
  String toString() {
    return 'PriceFeedMessage.products(event: $event, feed: $feed, productIds: $productIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductsPriceFeedMessage &&
            const DeepCollectionEquality().equals(other.event, event) &&
            const DeepCollectionEquality().equals(other.feed, feed) &&
            const DeepCollectionEquality()
                .equals(other.productIds, productIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(event),
      const DeepCollectionEquality().hash(feed),
      const DeepCollectionEquality().hash(productIds));

  @JsonKey(ignore: true)
  @override
  $ProductsPriceFeedMessageCopyWith<ProductsPriceFeedMessage> get copyWith =>
      _$ProductsPriceFeedMessageCopyWithImpl<ProductsPriceFeedMessage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String event, String feed,
            @JsonKey(name: 'product_ids') List<String> productIds)
        products,
  }) {
    return products(event, feed, productIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String event, String feed,
            @JsonKey(name: 'product_ids') List<String> productIds)?
        products,
  }) {
    return products?.call(event, feed, productIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String event, String feed,
            @JsonKey(name: 'product_ids') List<String> productIds)?
        products,
    required TResult orElse(),
  }) {
    if (products != null) {
      return products(event, feed, productIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsPriceFeedMessage value) products,
  }) {
    return products(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductsPriceFeedMessage value)? products,
  }) {
    return products?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsPriceFeedMessage value)? products,
    required TResult orElse(),
  }) {
    if (products != null) {
      return products(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsPriceFeedMessageToJson(this);
  }
}

abstract class ProductsPriceFeedMessage implements PriceFeedMessage {
  const factory ProductsPriceFeedMessage(
          {required String event,
          required String feed,
          @JsonKey(name: 'product_ids') required List<String> productIds}) =
      _$ProductsPriceFeedMessage;

  factory ProductsPriceFeedMessage.fromJson(Map<String, dynamic> json) =
      _$ProductsPriceFeedMessage.fromJson;

  @override
  String get event;
  @override
  String get feed;
  @override
  @JsonKey(name: 'product_ids')
  List<String> get productIds;
  @override
  @JsonKey(ignore: true)
  $ProductsPriceFeedMessageCopyWith<ProductsPriceFeedMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
