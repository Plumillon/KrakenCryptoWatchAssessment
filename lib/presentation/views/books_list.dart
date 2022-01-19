import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kraken_crypto_watch/presentation/blocs/books_bloc.dart';
import 'package:kraken_crypto_watch/presentation/di/injector.dart';
import 'package:kraken_crypto_watch/presentation/events/book_event.dart';
import 'package:kraken_crypto_watch/presentation/states/book_state.dart';

class BooksList extends StatefulWidget {
  const BooksList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BooksListState();
}

class _BooksListState extends State<BooksList> {
  late BooksBloc _booksBloc;

  @override
  void initState() {
    super.initState();
    _booksBloc = getIt<BooksBloc>();
    _booksBloc.add(const BookEvent.load());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (BuildContext context) => _booksBloc,
        child: BlocBuilder<BooksBloc, BookState>(
          builder: (context, state) {
            if (state is BookStateLoaded) {
              return _buildBooks(state);
            }

            return Container();
          },
        ),
      ),
    );
  }

  Widget _buildBooks(BookStateLoaded state) {
    return ListView.builder(
        itemCount: state.bids.length,
        itemBuilder: (BuildContext context, int index) => InkWell(
          child: Text(state.bids[index].quantity.toString() +
              " " +
              state.bids[index].price.toString()),
        ));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListView.builder(
            itemCount: state.asks.length,
            itemBuilder: (BuildContext context, int index) => InkWell(
                  child: Text(state.asks[index].quantity.toString() +
                      " " +
                      state.asks[index].price.toString()),
                )),
        ListView.builder(
            itemCount: state.bids.length,
            itemBuilder: (BuildContext context, int index) => InkWell(
                  child: Text(state.bids[index].quantity.toString() +
                      " " +
                      state.bids[index].price.toString()),
                )),
      ],
    );
  }
}
