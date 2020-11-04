import 'package:meta/meta.dart';

class CallbackMessageAllow {
  final int userId;

  final String key;

  const CallbackMessageAllow({
    @required this.userId,
    @required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user_id': userId,
      'key': key,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory CallbackMessageAllow.fromMap(Map<String, dynamic> map) {
    return CallbackMessageAllow(
      userId: map['user_id'] as int,
      key: map['key'] as String,
    );
  }
}
