// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_entry_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookEntryDTO _$$_BookEntryDTOFromJson(Map<String, dynamic> json) =>
    _$_BookEntryDTO(
      price: (json['price'] as num?)?.toDouble() ?? 0,
      quantity: (json['qty'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_BookEntryDTOToJson(_$_BookEntryDTO instance) =>
    <String, dynamic>{
      'price': instance.price,
      'qty': instance.quantity,
    };
