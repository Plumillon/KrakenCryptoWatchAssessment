import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kraken_crypto_watch/presentation/models/book_model.dart';

part 'book_event.freezed.dart';

@freezed
abstract class BookEvent {
  const factory BookEvent.load() = BookEventLoad;

  const factory BookEvent.loading() = BookEventLoading;

  const factory BookEvent.select({required double price}) = BookEventSelect;
}
