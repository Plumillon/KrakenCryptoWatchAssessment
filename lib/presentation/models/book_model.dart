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
  String toString() {
    return 'BookModel(side: $side, price: $price, quantity: $quantity, percentage: $percentage)';
  }
}
