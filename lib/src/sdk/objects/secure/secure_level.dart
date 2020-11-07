class VKSecureLevel {
  /// Level.
  final int level;

  /// User ID.
  final int uid;

  const VKSecureLevel({
    this.level,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': level,
      'uid': uid,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKSecureLevel.fromMap(Map<String, dynamic> map) {
    return VKSecureLevel(
      level: map['level'] as int,
      uid: map['uid'] as int,
    );
  }
}
