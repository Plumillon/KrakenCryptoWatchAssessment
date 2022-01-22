import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kraken_crypto_watch/presentation/events/price_event.dart';
import 'package:kraken_crypto_watch/presentation/states/price_state.dart';

class PriceBloc extends Bloc<PriceEvent, PriceState> {
  PriceBloc() : super(const PriceState.initial()) {
    on<PriceEventSelect>((event, emit) {
      emit(PriceState.selected(price: event.price));
    });
  }
}
