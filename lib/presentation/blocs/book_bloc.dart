import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kraken_crypto_watch/core/constants.dart';
import 'package:kraken_crypto_watch/domain/entities/book_entity.dart'
    as book_entity;
import 'package:kraken_crypto_watch/domain/use_cases/get_books_use_case.dart';
import 'package:kraken_crypto_watch/presentation/events/book_event.dart';
import 'package:kraken_crypto_watch/presentation/mappers/book_model_mapper.dart';
import 'package:kraken_crypto_watch/presentation/models/book_model.dart';
import 'package:kraken_crypto_watch/presentation/states/book_state.dart';

class BookBlock extends Bloc<BookEvent, BookState> {
  final GetBooksUseCase _getBookUseCase;
  final BookModelMapper _bookModelMapper;
  StreamSubscription? asksSubscription;
  StreamSubscription? bidsSubscription;

  BookBlock(this._getBookUseCase, this._bookModelMapper)
      : super(const BookState.initial()) {
    on<BookEventLoad>((_, emit) {
      asksSubscription = _getBookUseCase
          .execute(
              param: GetBooksUseCaseParam(
                  ticker: Constants.productXBTUSD,
                  bookSide: book_entity.Side.ask))
          .listen((books) {
        emit(BookState.loaded(
            side: Side.ask,
            books: books.map((book) => _bookModelMapper.mapTo(book)).toList()));
      });
    });

    on<BookEventSelect>((event, emit) {
      emit(BookState.selected(price: event.price));
    });
  }
}
