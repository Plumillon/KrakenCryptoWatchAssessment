enum Side { bid, ask }

class BookEntity implements Comparable {
  Side side;
  double price;
  double quantity;

  BookEntity({required this.side, required this.price, required this.quantity});

  @override
  int compareTo(other) {
    if (price > other.price) {
      return 1;
    }

    if (price < other.price) {
      return -1;
    }

    return 0;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookEntity &&
          runtimeType == other.runtimeType &&
          side == other.side &&
          price == other.price &&
          quantity == other.quantity;

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    return 'BookEntity(side: $side, price: $price, quantity: $quantity)';
  }
}
