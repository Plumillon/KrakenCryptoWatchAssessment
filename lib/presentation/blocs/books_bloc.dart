import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kraken_crypto_watch/core/constants.dart';
import 'package:kraken_crypto_watch/domain/entities/book_entity.dart'
    as book_entity;
import 'package:kraken_crypto_watch/domain/use_cases/connect_and_ask_use_case.dart';
import 'package:kraken_crypto_watch/domain/use_cases/get_books_use_case.dart';
import 'package:kraken_crypto_watch/presentation/events/book_event.dart';
import 'package:kraken_crypto_watch/presentation/mappers/book_model_mapper.dart';
import 'package:kraken_crypto_watch/presentation/models/book_model.dart';
import 'package:kraken_crypto_watch/presentation/states/book_state.dart';
import 'package:kraken_crypto_watch/utils/logger.dart';

class BooksBloc extends Bloc<BookEvent, BookState> {
  final ConnectAndAskUseCase _connectAndAskUseCase;
  final GetBooksUseCase _getBookUseCase;
  final BookModelMapper _bookModelMapper;

  // StreamSubscription? asksSubscription;
  StreamSubscription? bidsSubscription;

  BooksBloc(
      this._connectAndAskUseCase, this._getBookUseCase, this._bookModelMapper)
      : super(const BookState.initial()) {
    on<BookEventLoad>((_, emit) async {
      await _connectAndAskUseCase.execute(param: Constants.productXBTUSD);

      Stream<List<book_entity.BookEntity>> asks =
          _getBookUseCase.execute(param: book_entity.Side.ask);

      await for (var books in asks) {
        emit(BookState.loaded(
            side: Side.ask,
            books: books.map((book) => _bookModelMapper.mapTo(book)).toList()));
      }
    });

    on<BookEventSelect>((event, emit) {
      emit(BookState.selected(price: event.price));
    });
  }
}
