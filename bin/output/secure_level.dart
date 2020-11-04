

class SecureLevel {
  /// Level.
  final int level;

  /// User ID.
  final int uid;

  const SecureLevel({
    this.level,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': level,
      'uid': uid,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory SecureLevel.fromMap(Map<String, dynamic> map) {
    return SecureLevel(
      level: map['level'] as int,
      uid: map['uid'] as int,
    );
  }
}
