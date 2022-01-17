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
              return ListView.builder(
                  itemCount: state.books.length,
                  itemBuilder: (BuildContext context, int index) => InkWell(
                        child: Text(state.books[index].quantity.toString() +
                            " " +
                            state.books[index].price.toString()),
                      ));
            }

            return Container();
          },
        ),
      ),
    );
  }
}
