import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_entry_dto.freezed.dart';
part 'book_entry_dto.g.dart';

@freezed
class BookEntryDTO with _$BookEntryDTO {
  const factory BookEntryDTO({@Default(0) double price, @Default(0) double quantity}) = _BookEntryDTO;
  factory BookEntryDTO.fromJson(Map<String, dynamic> json) => _$BookEntryDTOFromJson(json);
}
