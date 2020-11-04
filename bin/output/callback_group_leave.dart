import 'base_bool_int.dart';

class CallbackGroupLeave {
  final int userId;

  final BaseBoolInt self;

  const CallbackGroupLeave({
    this.userId,
    this.self,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user_id': userId,
      'self': self?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory CallbackGroupLeave.fromMap(Map<String, dynamic> map) {
    return CallbackGroupLeave(
      userId: map['user_id'] as int,
      self: BaseBoolInt(map['self']),
    );
  }
}
