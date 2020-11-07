import 'package:meta/meta.dart';

class VKCallbackMessageAllow {
  final int userId;

  final String key;

  const VKCallbackMessageAllow({
    @required this.userId,
    @required this.key,
  }) : assert(userId >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user_id': userId,
      'key': key,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKCallbackMessageAllow.fromMap(Map<String, dynamic> map) {
    return VKCallbackMessageAllow(
      userId: map['user_id'] as int,
      key: map['key'] as String,
    );
  }
}
