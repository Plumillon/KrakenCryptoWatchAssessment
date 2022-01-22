// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'price_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PriceStateTearOff {
  const _$PriceStateTearOff();

  PriceStateInitial initial() {
    return const PriceStateInitial();
  }

  PriceStateSelected selected({required double price}) {
    return PriceStateSelected(
      price: price,
    );
  }
}

/// @nodoc
const $PriceState = _$PriceStateTearOff();

/// @nodoc
mixin _$PriceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double price) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double price)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double price)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PriceStateInitial value) initial,
    required TResult Function(PriceStateSelected value) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PriceStateInitial value)? initial,
    TResult Function(PriceStateSelected value)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PriceStateInitial value)? initial,
    TResult Function(PriceStateSelected value)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceStateCopyWith<$Res> {
  factory $PriceStateCopyWith(
          PriceState value, $Res Function(PriceState) then) =
      _$PriceStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PriceStateCopyWithImpl<$Res> implements $PriceStateCopyWith<$Res> {
  _$PriceStateCopyWithImpl(this._value, this._then);

  final PriceState _value;
  // ignore: unused_field
  final $Res Function(PriceState) _then;
}

/// @nodoc
abstract class $PriceStateInitialCopyWith<$Res> {
  factory $PriceStateInitialCopyWith(
          PriceStateInitial value, $Res Function(PriceStateInitial) then) =
      _$PriceStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$PriceStateInitialCopyWithImpl<$Res>
    extends _$PriceStateCopyWithImpl<$Res>
    implements $PriceStateInitialCopyWith<$Res> {
  _$PriceStateInitialCopyWithImpl(
      PriceStateInitial _value, $Res Function(PriceStateInitial) _then)
      : super(_value, (v) => _then(v as PriceStateInitial));

  @override
  PriceStateInitial get _value => super._value as PriceStateInitial;
}

/// @nodoc

class _$PriceStateInitial implements PriceStateInitial {
  const _$PriceStateInitial();

  @override
  String toString() {
    return 'PriceState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PriceStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double price) selected,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double price)? selected,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double price)? selected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PriceStateInitial value) initial,
    required TResult Function(PriceStateSelected value) selected,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PriceStateInitial value)? initial,
    TResult Function(PriceStateSelected value)? selected,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PriceStateInitial value)? initial,
    TResult Function(PriceStateSelected value)? selected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PriceStateInitial implements PriceState {
  const factory PriceStateInitial() = _$PriceStateInitial;
}

/// @nodoc
abstract class $PriceStateSelectedCopyWith<$Res> {
  factory $PriceStateSelectedCopyWith(
          PriceStateSelected value, $Res Function(PriceStateSelected) then) =
      _$PriceStateSelectedCopyWithImpl<$Res>;
  $Res call({double price});
}

/// @nodoc
class _$PriceStateSelectedCopyWithImpl<$Res>
    extends _$PriceStateCopyWithImpl<$Res>
    implements $PriceStateSelectedCopyWith<$Res> {
  _$PriceStateSelectedCopyWithImpl(
      PriceStateSelected _value, $Res Function(PriceStateSelected) _then)
      : super(_value, (v) => _then(v as PriceStateSelected));

  @override
  PriceStateSelected get _value => super._value as PriceStateSelected;

  @override
  $Res call({
    Object? price = freezed,
  }) {
    return _then(PriceStateSelected(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$PriceStateSelected implements PriceStateSelected {
  const _$PriceStateSelected({required this.price});

  @override
  final double price;

  @override
  String toString() {
    return 'PriceState.selected(price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PriceStateSelected &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  $PriceStateSelectedCopyWith<PriceStateSelected> get copyWith =>
      _$PriceStateSelectedCopyWithImpl<PriceStateSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double price) selected,
  }) {
    return selected(price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double price)? selected,
  }) {
    return selected?.call(price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double price)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PriceStateInitial value) initial,
    required TResult Function(PriceStateSelected value) selected,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PriceStateInitial value)? initial,
    TResult Function(PriceStateSelected value)? selected,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PriceStateInitial value)? initial,
    TResult Function(PriceStateSelected value)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class PriceStateSelected implements PriceState {
  const factory PriceStateSelected({required double price}) =
      _$PriceStateSelected;

  double get price;
  @JsonKey(ignore: true)
  $PriceStateSelectedCopyWith<PriceStateSelected> get copyWith =>
      throw _privateConstructorUsedError;
}
