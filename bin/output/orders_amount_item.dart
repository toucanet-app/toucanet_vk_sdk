

class OrdersAmountItem {
  /// Votes amount in user's currency.
  final int amount;

  /// Amount description.
  final String description;

  /// Votes number.
  final String votes;

  const OrdersAmountItem({
    this.amount,
    this.description,
    this.votes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': amount,
      'description': description,
      'votes': votes,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory OrdersAmountItem.fromMap(Map<String, dynamic> map) {
    return OrdersAmountItem(
      amount: map['amount'] as int,
      description: map['description'] as String,
      votes: map['votes'] as String,
    );
  }
}
