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
}
