import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kraken_crypto_watch/presentation/models/book_model.dart';

part 'book_state.freezed.dart';

@freezed
class BookState {
  const factory BookState.initial() = BookStateInitial;

  const factory BookState.loading() = BookStateLoading;

  const factory BookState.loaded(
      {required List<BookModel> asks,
      required List<BookModel> bids}) = BookStateLoaded;

  const factory BookState.selected({required double price}) = BookStateSelected;
}
