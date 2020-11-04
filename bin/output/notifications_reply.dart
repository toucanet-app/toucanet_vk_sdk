

class NotificationsReply {
  /// Date when the reply has been created in Unixtime.
  final int date;

  /// Reply ID.
  final int id;

  /// Reply text.
  final int text;

  const NotificationsReply({
    this.date,
    this.id,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'id': id,
      'text': text,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory NotificationsReply.fromMap(Map<String, dynamic> map) {
    return NotificationsReply(
      date: map['date'] as int,
      id: map['id'] as int,
      text: map['text'] as int,
    );
  }
}
