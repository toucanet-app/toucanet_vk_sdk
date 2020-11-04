import 'package:meta/meta.dart';

class CallbackMessageDeny {
  final int userId;

  const CallbackMessageDeny({
    @required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user_id': userId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory CallbackMessageDeny.fromMap(Map<String, dynamic> map) {
    return CallbackMessageDeny(
      userId: map['user_id'] as int,
    );
  }
}
