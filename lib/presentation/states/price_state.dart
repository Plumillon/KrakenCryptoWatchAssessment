import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_state.freezed.dart';

@freezed
class PriceState with _$PriceState {
  const factory PriceState.initial() = PriceStateInitial;

  const factory PriceState.selected({required double price}) =
      PriceStateSelected;
}
