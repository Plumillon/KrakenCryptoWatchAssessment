import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kraken_crypto_watch/domain/entities/book_entity.dart' as book_entity;
import 'package:kraken_crypto_watch/presentation/models/book_model.dart';

part 'book_state.freezed.dart';

@freezed
abstract class BookState {
  const factory BookState.initial() = BookStateInitial;

  const factory BookState.loading() = BookStateLoading;

  const factory BookState.loaded({required Side side, required List<BookModel> books}) = BookStateLoaded;

  const factory BookState.selected({required double price}) = BookStateSelected;
}
