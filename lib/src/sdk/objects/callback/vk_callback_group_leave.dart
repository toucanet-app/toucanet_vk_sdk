import '../base/vk_base_bool_int.dart';

class VKCallbackGroupLeave {
  final int userId;

  final VKBaseBoolInt self;

  const VKCallbackGroupLeave({
    this.userId,
    this.self,
  }) : assert(userId == null || userId >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user_id': userId,
      'self': self?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKCallbackGroupLeave.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKCallbackGroupLeave(
      userId: map['user_id'] as int,
      self: VKBaseBoolInt(map['self']),
    );
  }
}
