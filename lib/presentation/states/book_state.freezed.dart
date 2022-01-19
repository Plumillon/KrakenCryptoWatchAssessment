// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BookStateTearOff {
  const _$BookStateTearOff();

  BookStateInitial initial() {
    return const BookStateInitial();
  }

  BookStateLoading loading() {
    return const BookStateLoading();
  }

  BookStateLoaded loaded(
      {required List<BookModel> asks, required List<BookModel> bids}) {
    return BookStateLoaded(
      asks: asks,
      bids: bids,
    );
  }

  BookStateSelected selected({required double price}) {
    return BookStateSelected(
      price: price,
    );
  }
}

/// @nodoc
const $BookState = _$BookStateTearOff();

/// @nodoc
mixin _$BookState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BookModel> asks, List<BookModel> bids)
        loaded,
    required TResult Function(double price) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BookModel> asks, List<BookModel> bids)? loaded,
    TResult Function(double price)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BookModel> asks, List<BookModel> bids)? loaded,
    TResult Function(double price)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookStateInitial value) initial,
    required TResult Function(BookStateLoading value) loading,
    required TResult Function(BookStateLoaded value) loaded,
    required TResult Function(BookStateSelected value) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BookStateInitial value)? initial,
    TResult Function(BookStateLoading value)? loading,
    TResult Function(BookStateLoaded value)? loaded,
    TResult Function(BookStateSelected value)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookStateInitial value)? initial,
    TResult Function(BookStateLoading value)? loading,
    TResult Function(BookStateLoaded value)? loaded,
    TResult Function(BookStateSelected value)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookStateCopyWith<$Res> {
  factory $BookStateCopyWith(BookState value, $Res Function(BookState) then) =
      _$BookStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookStateCopyWithImpl<$Res> implements $BookStateCopyWith<$Res> {
  _$BookStateCopyWithImpl(this._value, this._then);

  final BookState _value;
  // ignore: unused_field
  final $Res Function(BookState) _then;
}

/// @nodoc
abstract class $BookStateInitialCopyWith<$Res> {
  factory $BookStateInitialCopyWith(
          BookStateInitial value, $Res Function(BookStateInitial) then) =
      _$BookStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookStateInitialCopyWithImpl<$Res> extends _$BookStateCopyWithImpl<$Res>
    implements $BookStateInitialCopyWith<$Res> {
  _$BookStateInitialCopyWithImpl(
      BookStateInitial _value, $Res Function(BookStateInitial) _then)
      : super(_value, (v) => _then(v as BookStateInitial));

  @override
  BookStateInitial get _value => super._value as BookStateInitial;
}

/// @nodoc

class _$BookStateInitial implements BookStateInitial {
  const _$BookStateInitial();

  @override
  String toString() {
    return 'BookState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BookStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BookModel> asks, List<BookModel> bids)
        loaded,
    required TResult Function(double price) selected,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BookModel> asks, List<BookModel> bids)? loaded,
    TResult Function(double price)? selected,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BookModel> asks, List<BookModel> bids)? loaded,
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
    required TResult Function(BookStateInitial value) initial,
    required TResult Function(BookStateLoading value) loading,
    required TResult Function(BookStateLoaded value) loaded,
    required TResult Function(BookStateSelected value) selected,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BookStateInitial value)? initial,
    TResult Function(BookStateLoading value)? loading,
    TResult Function(BookStateLoaded value)? loaded,
    TResult Function(BookStateSelected value)? selected,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookStateInitial value)? initial,
    TResult Function(BookStateLoading value)? loading,
    TResult Function(BookStateLoaded value)? loaded,
    TResult Function(BookStateSelected value)? selected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class BookStateInitial implements BookState {
  const factory BookStateInitial() = _$BookStateInitial;
}

/// @nodoc
abstract class $BookStateLoadingCopyWith<$Res> {
  factory $BookStateLoadingCopyWith(
          BookStateLoading value, $Res Function(BookStateLoading) then) =
      _$BookStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookStateLoadingCopyWithImpl<$Res> extends _$BookStateCopyWithImpl<$Res>
    implements $BookStateLoadingCopyWith<$Res> {
  _$BookStateLoadingCopyWithImpl(
      BookStateLoading _value, $Res Function(BookStateLoading) _then)
      : super(_value, (v) => _then(v as BookStateLoading));

  @override
  BookStateLoading get _value => super._value as BookStateLoading;
}

/// @nodoc

class _$BookStateLoading implements BookStateLoading {
  const _$BookStateLoading();

  @override
  String toString() {
    return 'BookState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BookStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BookModel> asks, List<BookModel> bids)
        loaded,
    required TResult Function(double price) selected,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BookModel> asks, List<BookModel> bids)? loaded,
    TResult Function(double price)? selected,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BookModel> asks, List<BookModel> bids)? loaded,
    TResult Function(double price)? selected,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookStateInitial value) initial,
    required TResult Function(BookStateLoading value) loading,
    required TResult Function(BookStateLoaded value) loaded,
    required TResult Function(BookStateSelected value) selected,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BookStateInitial value)? initial,
    TResult Function(BookStateLoading value)? loading,
    TResult Function(BookStateLoaded value)? loaded,
    TResult Function(BookStateSelected value)? selected,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookStateInitial value)? initial,
    TResult Function(BookStateLoading value)? loading,
    TResult Function(BookStateLoaded value)? loaded,
    TResult Function(BookStateSelected value)? selected,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BookStateLoading implements BookState {
  const factory BookStateLoading() = _$BookStateLoading;
}

/// @nodoc
abstract class $BookStateLoadedCopyWith<$Res> {
  factory $BookStateLoadedCopyWith(
          BookStateLoaded value, $Res Function(BookStateLoaded) then) =
      _$BookStateLoadedCopyWithImpl<$Res>;
  $Res call({List<BookModel> asks, List<BookModel> bids});
}

/// @nodoc
class _$BookStateLoadedCopyWithImpl<$Res> extends _$BookStateCopyWithImpl<$Res>
    implements $BookStateLoadedCopyWith<$Res> {
  _$BookStateLoadedCopyWithImpl(
      BookStateLoaded _value, $Res Function(BookStateLoaded) _then)
      : super(_value, (v) => _then(v as BookStateLoaded));

  @override
  BookStateLoaded get _value => super._value as BookStateLoaded;

  @override
  $Res call({
    Object? asks = freezed,
    Object? bids = freezed,
  }) {
    return _then(BookStateLoaded(
      asks: asks == freezed
          ? _value.asks
          : asks // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      bids: bids == freezed
          ? _value.bids
          : bids // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
    ));
  }
}

/// @nodoc

class _$BookStateLoaded implements BookStateLoaded {
  const _$BookStateLoaded({required this.asks, required this.bids});

  @override
  final List<BookModel> asks;
  @override
  final List<BookModel> bids;

  @override
  String toString() {
    return 'BookState.loaded(asks: $asks, bids: $bids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BookStateLoaded &&
            const DeepCollectionEquality().equals(other.asks, asks) &&
            const DeepCollectionEquality().equals(other.bids, bids));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(asks),
      const DeepCollectionEquality().hash(bids));

  @JsonKey(ignore: true)
  @override
  $BookStateLoadedCopyWith<BookStateLoaded> get copyWith =>
      _$BookStateLoadedCopyWithImpl<BookStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BookModel> asks, List<BookModel> bids)
        loaded,
    required TResult Function(double price) selected,
  }) {
    return loaded(asks, bids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BookModel> asks, List<BookModel> bids)? loaded,
    TResult Function(double price)? selected,
  }) {
    return loaded?.call(asks, bids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BookModel> asks, List<BookModel> bids)? loaded,
    TResult Function(double price)? selected,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(asks, bids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookStateInitial value) initial,
    required TResult Function(BookStateLoading value) loading,
    required TResult Function(BookStateLoaded value) loaded,
    required TResult Function(BookStateSelected value) selected,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BookStateInitial value)? initial,
    TResult Function(BookStateLoading value)? loading,
    TResult Function(BookStateLoaded value)? loaded,
    TResult Function(BookStateSelected value)? selected,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookStateInitial value)? initial,
    TResult Function(BookStateLoading value)? loading,
    TResult Function(BookStateLoaded value)? loaded,
    TResult Function(BookStateSelected value)? selected,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class BookStateLoaded implements BookState {
  const factory BookStateLoaded(
      {required List<BookModel> asks,
      required List<BookModel> bids}) = _$BookStateLoaded;

  List<BookModel> get asks;
  List<BookModel> get bids;
  @JsonKey(ignore: true)
  $BookStateLoadedCopyWith<BookStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookStateSelectedCopyWith<$Res> {
  factory $BookStateSelectedCopyWith(
          BookStateSelected value, $Res Function(BookStateSelected) then) =
      _$BookStateSelectedCopyWithImpl<$Res>;
  $Res call({double price});
}

/// @nodoc
class _$BookStateSelectedCopyWithImpl<$Res>
    extends _$BookStateCopyWithImpl<$Res>
    implements $BookStateSelectedCopyWith<$Res> {
  _$BookStateSelectedCopyWithImpl(
      BookStateSelected _value, $Res Function(BookStateSelected) _then)
      : super(_value, (v) => _then(v as BookStateSelected));

  @override
  BookStateSelected get _value => super._value as BookStateSelected;

  @override
  $Res call({
    Object? price = freezed,
  }) {
    return _then(BookStateSelected(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$BookStateSelected implements BookStateSelected {
  const _$BookStateSelected({required this.price});

  @override
  final double price;

  @override
  String toString() {
    return 'BookState.selected(price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BookStateSelected &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  $BookStateSelectedCopyWith<BookStateSelected> get copyWith =>
      _$BookStateSelectedCopyWithImpl<BookStateSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BookModel> asks, List<BookModel> bids)
        loaded,
    required TResult Function(double price) selected,
  }) {
    return selected(price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BookModel> asks, List<BookModel> bids)? loaded,
    TResult Function(double price)? selected,
  }) {
    return selected?.call(price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BookModel> asks, List<BookModel> bids)? loaded,
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
    required TResult Function(BookStateInitial value) initial,
    required TResult Function(BookStateLoading value) loading,
    required TResult Function(BookStateLoaded value) loaded,
    required TResult Function(BookStateSelected value) selected,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BookStateInitial value)? initial,
    TResult Function(BookStateLoading value)? loading,
    TResult Function(BookStateLoaded value)? loaded,
    TResult Function(BookStateSelected value)? selected,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookStateInitial value)? initial,
    TResult Function(BookStateLoading value)? loading,
    TResult Function(BookStateLoaded value)? loaded,
    TResult Function(BookStateSelected value)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class BookStateSelected implements BookState {
  const factory BookStateSelected({required double price}) =
      _$BookStateSelected;

  double get price;
  @JsonKey(ignore: true)
  $BookStateSelectedCopyWith<BookStateSelected> get copyWith =>
      throw _privateConstructorUsedError;
}
