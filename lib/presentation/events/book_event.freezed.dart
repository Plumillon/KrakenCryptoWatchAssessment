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
}

/// @nodoc
const $BookEvent = _$BookEventTearOff();

/// @nodoc
mixin _$BookEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookEventLoad value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BookEventLoad value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookEventLoad value)? load,
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
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
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
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BookEventLoad value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookEventLoad value)? load,
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
