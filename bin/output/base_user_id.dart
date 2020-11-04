class BaseUserId {
  /// User ID.
  final int userId;

  const BaseUserId({
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user_id': userId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory BaseUserId.fromMap(Map<String, dynamic> map) {
    return BaseUserId(
      userId: map['user_id'] as int,
    );
  }
}
