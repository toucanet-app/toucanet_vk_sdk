

class OrdersOrder {
  /// Amount.
  final int amount;

  /// App order ID.
  final int appOrderId;

  /// Cancel transaction ID.
  final int cancelTransactionId;

  /// Date of creation in Unixtime.
  final int date;

  /// Order ID.
  final int id;

  /// Order item.
  final String item;

  /// Receiver ID.
  final int receiverId;

  /// Order status.
  final String status;

  /// Transaction ID.
  final int transactionId;

  /// User ID.
  final int userId;

  const OrdersOrder({
    this.amount,
    this.appOrderId,
    this.cancelTransactionId,
    this.date,
    this.id,
    this.item,
    this.receiverId,
    this.status,
    this.transactionId,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': amount,
      'app_order_id': appOrderId,
      'cancel_transaction_id': cancelTransactionId,
      'date': date,
      'id': id,
      'item': item,
      'receiver_id': receiverId,
      'status': status,
      'transaction_id': transactionId,
      'user_id': userId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory OrdersOrder.fromMap(Map<String, dynamic> map) {
    return OrdersOrder(
      amount: map['amount'] as int,
      appOrderId: map['app_order_id'] as int,
      cancelTransactionId: map['cancel_transaction_id'] as int,
      date: map['date'] as int,
      id: map['id'] as int,
      item: map['item'] as String,
      receiverId: map['receiver_id'] as int,
      status: map['status'] as String,
      transactionId: map['transaction_id'] as int,
      userId: map['user_id'] as int,
    );
  }
}
