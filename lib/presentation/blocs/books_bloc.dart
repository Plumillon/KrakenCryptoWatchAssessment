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
import 'package:rxdart/rxdart.dart';

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
      emit(const BookState.loading());

      await _connectAndAskUseCase.execute(param: Constants.productXBTUSD);

      Stream<List<BookModel>> asks =
          _getBookUseCase.execute(param: book_entity.Side.ask).map((books) {
        double greatest = books.isNotEmpty
            ? books
                .reduce((value, element) =>
                    value.quantity >= element.quantity ? value : element)
                .quantity
            : 0;

        return books
            .map((book) => _bookModelMapper.mapToWithGreatest(book, greatest))
            .toList();
      });
      Stream<List<BookModel>> bids =
          _getBookUseCase.execute(param: book_entity.Side.bid).map((books) {
        double greatest = books.isNotEmpty
            ? books
                .reduce((value, element) =>
                    value.quantity >= element.quantity ? value : element)
                .quantity
            : 0;

        return books
            .map((book) => _bookModelMapper.mapToWithGreatest(book, greatest))
            .toList();
      });

      // Let's not emit too fast, to avoid flooding the UI
      var bookStates = CombineLatestStream.combine2(asks, bids,
          (List<BookModel> bookAsks, List<BookModel> bookBids) {
        return BookState.loaded(asks: bookAsks, bids: bookBids);
      });

      await for (var state in bookStates) {
        emit(state);
        getLogger().i(state);
      }
    });
  }
}
