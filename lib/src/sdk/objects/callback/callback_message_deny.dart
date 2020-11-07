import 'package:meta/meta.dart';

class VKCallbackMessageDeny {
  final int userId;

  const VKCallbackMessageDeny({
    @required this.userId,
  }) : assert(userId >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user_id': userId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKCallbackMessageDeny.fromMap(Map<String, dynamic> map) {
    return VKCallbackMessageDeny(
      userId: map['user_id'] as int,
    );
  }
}
