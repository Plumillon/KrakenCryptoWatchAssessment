enum Side { bid, ask }

class BookModel {
  Side side;
  double price;
  double quantity;
  double percentage;

  BookModel(
      {required this.side,
      required this.price,
      required this.quantity,
      required this.percentage});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookModel &&
          runtimeType == other.runtimeType &&
          side == other.side &&
          price == other.price &&
          quantity == other.quantity &&
          percentage == other.percentage;

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    return 'BookModel(side: $side, price: $price, quantity: $quantity, percentage: $percentage)';
  }
}
