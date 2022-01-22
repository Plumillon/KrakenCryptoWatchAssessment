// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_entry_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookEntryDTO _$BookEntryDTOFromJson(Map<String, dynamic> json) {
  return _BookEntryDTO.fromJson(json);
}

/// @nodoc
class _$BookEntryDTOTearOff {
  const _$BookEntryDTOTearOff();

  _BookEntryDTO call(
      {double price = 0, @JsonKey(name: 'qty') double quantity = 0}) {
    return _BookEntryDTO(
      price: price,
      quantity: quantity,
    );
  }

  BookEntryDTO fromJson(Map<String, Object?> json) {
    return BookEntryDTO.fromJson(json);
  }
}

/// @nodoc
const $BookEntryDTO = _$BookEntryDTOTearOff();

/// @nodoc
mixin _$BookEntryDTO {
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'qty')
  double get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookEntryDTOCopyWith<BookEntryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookEntryDTOCopyWith<$Res> {
  factory $BookEntryDTOCopyWith(
          BookEntryDTO value, $Res Function(BookEntryDTO) then) =
      _$BookEntryDTOCopyWithImpl<$Res>;
  $Res call({double price, @JsonKey(name: 'qty') double quantity});
}

/// @nodoc
class _$BookEntryDTOCopyWithImpl<$Res> implements $BookEntryDTOCopyWith<$Res> {
  _$BookEntryDTOCopyWithImpl(this._value, this._then);

  final BookEntryDTO _value;
  // ignore: unused_field
  final $Res Function(BookEntryDTO) _then;

  @override
  $Res call({
    Object? price = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$BookEntryDTOCopyWith<$Res>
    implements $BookEntryDTOCopyWith<$Res> {
  factory _$BookEntryDTOCopyWith(
          _BookEntryDTO value, $Res Function(_BookEntryDTO) then) =
      __$BookEntryDTOCopyWithImpl<$Res>;
  @override
  $Res call({double price, @JsonKey(name: 'qty') double quantity});
}

/// @nodoc
class __$BookEntryDTOCopyWithImpl<$Res> extends _$BookEntryDTOCopyWithImpl<$Res>
    implements _$BookEntryDTOCopyWith<$Res> {
  __$BookEntryDTOCopyWithImpl(
      _BookEntryDTO _value, $Res Function(_BookEntryDTO) _then)
      : super(_value, (v) => _then(v as _BookEntryDTO));

  @override
  _BookEntryDTO get _value => super._value as _BookEntryDTO;

  @override
  $Res call({
    Object? price = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_BookEntryDTO(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookEntryDTO implements _BookEntryDTO {
  const _$_BookEntryDTO(
      {this.price = 0, @JsonKey(name: 'qty') this.quantity = 0});

  factory _$_BookEntryDTO.fromJson(Map<String, dynamic> json) =>
      _$$_BookEntryDTOFromJson(json);

  @JsonKey()
  @override
  final double price;
  @override
  @JsonKey(name: 'qty')
  final double quantity;

  @override
  String toString() {
    return 'BookEntryDTO(price: $price, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookEntryDTO &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(quantity));

  @JsonKey(ignore: true)
  @override
  _$BookEntryDTOCopyWith<_BookEntryDTO> get copyWith =>
      __$BookEntryDTOCopyWithImpl<_BookEntryDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookEntryDTOToJson(this);
  }
}

abstract class _BookEntryDTO implements BookEntryDTO {
  const factory _BookEntryDTO(
      {double price, @JsonKey(name: 'qty') double quantity}) = _$_BookEntryDTO;

  factory _BookEntryDTO.fromJson(Map<String, dynamic> json) =
      _$_BookEntryDTO.fromJson;

  @override
  double get price;
  @override
  @JsonKey(name: 'qty')
  double get quantity;
  @override
  @JsonKey(ignore: true)
  _$BookEntryDTOCopyWith<_BookEntryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
