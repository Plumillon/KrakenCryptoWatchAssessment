// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BookEventTearOff {
  const _$BookEventTearOff();

  BookEventLoad load() {
    return const BookEventLoad();
  }

  BookEventLoading loading() {
    return const BookEventLoading();
  }

  BookEventSelect select({required double price}) {
    return BookEventSelect(
      price: price,
    );
  }
}

/// @nodoc
const $BookEvent = _$BookEventTearOff();

/// @nodoc
mixin _$BookEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loading,
    required TResult Function(double price) select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loading,
    TResult Function(double price)? select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loading,
    TResult Function(double price)? select,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookEventLoad value) load,
    required TResult Function(BookEventLoading value) loading,
    required TResult Function(BookEventSelect value) select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BookEventLoad value)? load,
    TResult Function(BookEventLoading value)? loading,
    TResult Function(BookEventSelect value)? select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookEventLoad value)? load,
    TResult Function(BookEventLoading value)? loading,
    TResult Function(BookEventSelect value)? select,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookEventCopyWith<$Res> {
  factory $BookEventCopyWith(BookEvent value, $Res Function(BookEvent) then) =
      _$BookEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookEventCopyWithImpl<$Res> implements $BookEventCopyWith<$Res> {
  _$BookEventCopyWithImpl(this._value, this._then);

  final BookEvent _value;
  // ignore: unused_field
  final $Res Function(BookEvent) _then;
}

/// @nodoc
abstract class $BookEventLoadCopyWith<$Res> {
  factory $BookEventLoadCopyWith(
          BookEventLoad value, $Res Function(BookEventLoad) then) =
      _$BookEventLoadCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookEventLoadCopyWithImpl<$Res> extends _$BookEventCopyWithImpl<$Res>
    implements $BookEventLoadCopyWith<$Res> {
  _$BookEventLoadCopyWithImpl(
      BookEventLoad _value, $Res Function(BookEventLoad) _then)
      : super(_value, (v) => _then(v as BookEventLoad));

  @override
  BookEventLoad get _value => super._value as BookEventLoad;
}

/// @nodoc

class _$BookEventLoad implements BookEventLoad {
  const _$BookEventLoad();

  @override
  String toString() {
    return 'BookEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BookEventLoad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loading,
    required TResult Function(double price) select,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loading,
    TResult Function(double price)? select,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loading,
    TResult Function(double price)? select,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookEventLoad value) load,
    required TResult Function(BookEventLoading value) loading,
    required TResult Function(BookEventSelect value) select,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BookEventLoad value)? load,
    TResult Function(BookEventLoading value)? loading,
    TResult Function(BookEventSelect value)? select,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookEventLoad value)? load,
    TResult Function(BookEventLoading value)? loading,
    TResult Function(BookEventSelect value)? select,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class BookEventLoad implements BookEvent {
  const factory BookEventLoad() = _$BookEventLoad;
}

/// @nodoc
abstract class $BookEventLoadingCopyWith<$Res> {
  factory $BookEventLoadingCopyWith(
          BookEventLoading value, $Res Function(BookEventLoading) then) =
      _$BookEventLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookEventLoadingCopyWithImpl<$Res> extends _$BookEventCopyWithImpl<$Res>
    implements $BookEventLoadingCopyWith<$Res> {
  _$BookEventLoadingCopyWithImpl(
      BookEventLoading _value, $Res Function(BookEventLoading) _then)
      : super(_value, (v) => _then(v as BookEventLoading));

  @override
  BookEventLoading get _value => super._value as BookEventLoading;
}

/// @nodoc

class _$BookEventLoading implements BookEventLoading {
  const _$BookEventLoading();

  @override
  String toString() {
    return 'BookEvent.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BookEventLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loading,
    required TResult Function(double price) select,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loading,
    TResult Function(double price)? select,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loading,
    TResult Function(double price)? select,
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
    required TResult Function(BookEventLoad value) load,
    required TResult Function(BookEventLoading value) loading,
    required TResult Function(BookEventSelect value) select,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BookEventLoad value)? load,
    TResult Function(BookEventLoading value)? loading,
    TResult Function(BookEventSelect value)? select,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookEventLoad value)? load,
    TResult Function(BookEventLoading value)? loading,
    TResult Function(BookEventSelect value)? select,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BookEventLoading implements BookEvent {
  const factory BookEventLoading() = _$BookEventLoading;
}

/// @nodoc
abstract class $BookEventSelectCopyWith<$Res> {
  factory $BookEventSelectCopyWith(
          BookEventSelect value, $Res Function(BookEventSelect) then) =
      _$BookEventSelectCopyWithImpl<$Res>;
  $Res call({double price});
}

/// @nodoc
class _$BookEventSelectCopyWithImpl<$Res> extends _$BookEventCopyWithImpl<$Res>
    implements $BookEventSelectCopyWith<$Res> {
  _$BookEventSelectCopyWithImpl(
      BookEventSelect _value, $Res Function(BookEventSelect) _then)
      : super(_value, (v) => _then(v as BookEventSelect));

  @override
  BookEventSelect get _value => super._value as BookEventSelect;

  @override
  $Res call({
    Object? price = freezed,
  }) {
    return _then(BookEventSelect(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$BookEventSelect implements BookEventSelect {
  const _$BookEventSelect({required this.price});

  @override
  final double price;

  @override
  String toString() {
    return 'BookEvent.select(price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BookEventSelect &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  $BookEventSelectCopyWith<BookEventSelect> get copyWith =>
      _$BookEventSelectCopyWithImpl<BookEventSelect>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loading,
    required TResult Function(double price) select,
  }) {
    return select(price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loading,
    TResult Function(double price)? select,
  }) {
    return select?.call(price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loading,
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
    required TResult Function(BookEventLoad value) load,
    required TResult Function(BookEventLoading value) loading,
    required TResult Function(BookEventSelect value) select,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BookEventLoad value)? load,
    TResult Function(BookEventLoading value)? loading,
    TResult Function(BookEventSelect value)? select,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookEventLoad value)? load,
    TResult Function(BookEventLoading value)? loading,
    TResult Function(BookEventSelect value)? select,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class BookEventSelect implements BookEvent {
  const factory BookEventSelect({required double price}) = _$BookEventSelect;

  double get price;
  @JsonKey(ignore: true)
  $BookEventSelectCopyWith<BookEventSelect> get copyWith =>
      throw _privateConstructorUsedError;
}
