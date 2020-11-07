class VKBaseUserId {
  /// User ID.
  final int userId;

  const VKBaseUserId({
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user_id': userId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBaseUserId.fromMap(Map<String, dynamic> map) {
    return VKBaseUserId(
      userId: map['user_id'] as int,
    );
  }
}
