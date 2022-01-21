import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kraken_crypto_watch/core/styles.dart';
import 'package:kraken_crypto_watch/presentation/blocs/books_bloc.dart';
import 'package:kraken_crypto_watch/presentation/blocs/price_bloc.dart';
import 'package:kraken_crypto_watch/presentation/di/injector.dart';
import 'package:kraken_crypto_watch/presentation/events/book_event.dart';
import 'package:kraken_crypto_watch/presentation/events/price_event.dart';
import 'package:kraken_crypto_watch/presentation/models/book_model.dart';
import 'package:kraken_crypto_watch/presentation/states/book_state.dart';
import 'package:kraken_crypto_watch/presentation/states/price_state.dart';

class BooksScreen extends StatefulWidget {
  const BooksScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BooksScreenState();
}

class _BooksScreenState extends State<BooksScreen> with WidgetsBindingObserver {
  late BooksBloc _booksBloc;
  late PriceBloc _priceBloc;
  final TextEditingController _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(this);

    _booksBloc = getIt<BooksBloc>();
    _priceBloc = getIt<PriceBloc>();
    _booksBloc.add(const BookEvent.load());
  }

  @override
  void dispose() {
    super.dispose();

    WidgetsBinding.instance?.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        _booksBloc.add(const BookEvent.load());
        break;
      case AppLifecycleState.paused:
        _booksBloc.add(const BookEvent.stop());
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    color: Styles.primary800,
                    border: Styles.boxBorder),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BlocProvider(
                    create: (BuildContext context) => _priceBloc,
                    child: BlocBuilder<PriceBloc, PriceState>(
                        builder: (context, state) {
                      if (state is PriceStateSelected) {
                        _textController.text = "${state.price}";
                      }

                      return _buildInput();
                    }),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: BlocProvider(
                    create: (BuildContext context) => _booksBloc,
                    child: BlocBuilder<BooksBloc, BookState>(
                      builder: (context, state) {
                        if (state is BookStateLoading) {
                          return Container(
                              alignment: Alignment.center,
                              child: const CircularProgressIndicator());
                        } else if (state is BookStateLoaded) {
                          return Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8)),
                                color: Styles.primary800,
                                border: Styles.boxBorder),
                            child: _buildLists(state),
                          );
                        }

                        return Container();
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLists(BookStateLoaded state) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          child: _buildBooks(Side.bid, state.bids),
        ),
        Flexible(
          child: _buildBooks(Side.ask, state.asks),
        ),
      ],
    );
  }

  Widget _buildBooks(Side side, List<BookModel> books) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: _buildBookHeader(side)),
        Expanded(
          child: ListView.builder(
            itemCount: books.length,
            itemBuilder: (BuildContext context, int index) => InkWell(
              child: _buildBookItem(books[index]),
              onTap: () =>
                  _priceBloc.add(PriceEvent.select(price: books[index].price)),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildInput() {
    return TextField(
        style: const TextStyle(color: Styles.primary200),
        cursorColor: Styles.primary200,
        decoration: const InputDecoration(
          fillColor: Styles.primary700,
          filled: true,
          focusedBorder: Styles.textInputBorder,
          border: Styles.textInputBorder,
          enabledBorder: Styles.textInputBorder,
          hintText: 'Enter a price',
        ),
        controller: _textController);
  }

  Widget _buildEvenRow(List<Widget> children, Side side) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
      textDirection: side == Side.ask ? TextDirection.ltr : TextDirection.rtl,
      children: children,
    );
  }

  Widget _buildBookHeader(Side side) {
    return _buildEvenRow([
      const Text(
        "PRICE",
        style: Styles.textHeader,
      ),
      const Text(
        "TOTAL",
        style: Styles.textHeader,
      ),
    ], side);
  }

  Widget _buildBookItem(BookModel model) {
    var percentage =
        model.side == Side.bid ? 1 - model.percentage : model.percentage;

    return Stack(children: [
      LinearProgressIndicator(
          minHeight: 40,
          value: percentage,
          backgroundColor:
              model.side == Side.ask ? Styles.primary800 : Styles.bid900,
          valueColor: AlwaysStoppedAnimation<Color>(
              model.side == Side.ask ? Styles.ask900 : Styles.primary800)),
      Container(
        alignment: Alignment.center,
        height: 40,
        child: _buildEvenRow([
          Text(
            model.price.toStringAsFixed(2),
            style: model.side == Side.ask ? Styles.textAsk : Styles.textBid,
          ),
          Text(
            model.quantity.toStringAsFixed(2),
            style: Styles.textQuantity,
          ),
        ], model.side),
      ),
    ]);
  }
}
