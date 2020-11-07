import 'package:meta/meta.dart';

import '../base/vk_base_bool_int.dart';

class VKCallbackGroupChangeSettings {
  final int userId;

  final VKBaseBoolInt self;

  const VKCallbackGroupChangeSettings({
    @required this.userId,
    @required this.self,
  }) : assert(userId >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user_id': userId,
      'self': self?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKCallbackGroupChangeSettings.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKCallbackGroupChangeSettings(
      userId: map['user_id'] as int,
      self: VKBaseBoolInt(map['self']),
    );
  }
}
