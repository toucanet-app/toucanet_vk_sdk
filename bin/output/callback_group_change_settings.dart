import 'base_bool_int.dart';
import 'package:meta/meta.dart';

class CallbackGroupChangeSettings {
  final int userId;

  final BaseBoolInt self;

  const CallbackGroupChangeSettings({
    @required this.userId,
    @required this.self,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user_id': userId,
      'self': self?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory CallbackGroupChangeSettings.fromMap(Map<String, dynamic> map) {
    return CallbackGroupChangeSettings(
      userId: map['user_id'] as int,
      self: BaseBoolInt(map['self']),
    );
  }
}
