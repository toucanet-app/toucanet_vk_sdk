class VKSecureTransaction {
  /// Transaction date in Unixtime.
  final int date;

  /// Transaction ID.
  final int id;

  /// From ID.
  final int uidFrom;

  /// To ID.
  final int uidTo;

  /// Votes number.
  final int votes;

  const VKSecureTransaction({
    this.date,
    this.id,
    this.uidFrom,
    this.uidTo,
    this.votes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'id': id,
      'uid_from': uidFrom,
      'uid_to': uidTo,
      'votes': votes,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKSecureTransaction.fromMap(Map<String, dynamic> map) {
    return VKSecureTransaction(
      date: map['date'] as int,
      id: map['id'] as int,
      uidFrom: map['uid_from'] as int,
      uidTo: map['uid_to'] as int,
      votes: map['votes'] as int,
    );
  }
}
