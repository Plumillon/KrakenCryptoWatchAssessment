// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'price_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PriceEventTearOff {
  const _$PriceEventTearOff();

  PriceEventSelect select({required double price}) {
    return PriceEventSelect(
      price: price,
    );
  }
}

/// @nodoc
const $PriceEvent = _$PriceEventTearOff();

/// @nodoc
mixin _$PriceEvent {
  double get price => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double price) select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double price)? select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double price)? select,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PriceEventSelect value) select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PriceEventSelect value)? select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PriceEventSelect value)? select,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PriceEventCopyWith<PriceEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceEventCopyWith<$Res> {
  factory $PriceEventCopyWith(
          PriceEvent value, $Res Function(PriceEvent) then) =
      _$PriceEventCopyWithImpl<$Res>;
  $Res call({double price});
}

/// @nodoc
class _$PriceEventCopyWithImpl<$Res> implements $PriceEventCopyWith<$Res> {
  _$PriceEventCopyWithImpl(this._value, this._then);

  final PriceEvent _value;
  // ignore: unused_field
  final $Res Function(PriceEvent) _then;

  @override
  $Res call({
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class $PriceEventSelectCopyWith<$Res>
    implements $PriceEventCopyWith<$Res> {
  factory $PriceEventSelectCopyWith(
          PriceEventSelect value, $Res Function(PriceEventSelect) then) =
      _$PriceEventSelectCopyWithImpl<$Res>;
  @override
  $Res call({double price});
}

/// @nodoc
class _$PriceEventSelectCopyWithImpl<$Res>
    extends _$PriceEventCopyWithImpl<$Res>
    implements $PriceEventSelectCopyWith<$Res> {
  _$PriceEventSelectCopyWithImpl(
      PriceEventSelect _value, $Res Function(PriceEventSelect) _then)
      : super(_value, (v) => _then(v as PriceEventSelect));

  @override
  PriceEventSelect get _value => super._value as PriceEventSelect;

  @override
  $Res call({
    Object? price = freezed,
  }) {
    return _then(PriceEventSelect(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$PriceEventSelect implements PriceEventSelect {
  const _$PriceEventSelect({required this.price});

  @override
  final double price;

  @override
  String toString() {
    return 'PriceEvent.select(price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PriceEventSelect &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  $PriceEventSelectCopyWith<PriceEventSelect> get copyWith =>
      _$PriceEventSelectCopyWithImpl<PriceEventSelect>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double price) select,
  }) {
    return select(price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double price)? select,
  }) {
    return select?.call(price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double price)? select,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PriceEventSelect value) select,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PriceEventSelect value)? select,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PriceEventSelect value)? select,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class PriceEventSelect implements PriceEvent {
  const factory PriceEventSelect({required double price}) = _$PriceEventSelect;

  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  $PriceEventSelectCopyWith<PriceEventSelect> get copyWith =>
      throw _privateConstructorUsedError;
}
