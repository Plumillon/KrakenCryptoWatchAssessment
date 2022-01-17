import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_event.freezed.dart';

@freezed
class BookEvent {
  const factory BookEvent.load() = BookEventLoad;

  const factory BookEvent.loading() = BookEventLoading;

  const factory BookEvent.select({required double price}) = BookEventSelect;
}
