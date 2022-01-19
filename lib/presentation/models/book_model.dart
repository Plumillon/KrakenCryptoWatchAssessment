enum Side { bid, ask }

class BookModel {
  Side side;
  double price;
  double quantity;

  BookModel({required this.side, required this.price, required this.quantity});

  @override
  String toString() {
    return 'BookModel(side: $side, price: $price, quantity: $quantity)';
  }
}
