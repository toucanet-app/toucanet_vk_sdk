class VKMessagesMessageRequestData {
  /// Status of message request.
  final String status;

  /// Message request sender id.
  final int inviterId;

  /// Message request date.
  final int requestDate;

  const VKMessagesMessageRequestData({
    this.status,
    this.inviterId,
    this.requestDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'inviter_id': inviterId,
      'request_date': requestDate,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesMessageRequestData.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMessagesMessageRequestData(
      status: map['status'] as String,
      inviterId: map['inviter_id'] as int,
      requestDate: map['request_date'] as int,
    );
  }
}
