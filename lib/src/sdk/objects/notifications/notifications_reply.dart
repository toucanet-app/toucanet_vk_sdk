class VKNotificationsReply {
  /// Date when the reply has been created in Unixtime.
  final int date;

  /// Reply ID.
  final int id;

  /// Reply text.
  final int text;

  const VKNotificationsReply({
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

  factory VKNotificationsReply.fromMap(Map<String, dynamic> map) {
    return VKNotificationsReply(
      date: map['date'] as int,
      id: map['id'] as int,
      text: map['text'] as int,
    );
  }
}
