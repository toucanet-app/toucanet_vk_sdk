import 'package:meta/meta.dart';

import '../base/vk_base_bool_int.dart';

class VKAccountPushConversationsItem {
  /// Time until that notifications are disabled in seconds.
  final int disabledUntil;

  /// Peer ID.
  final int peerId;

  /// Information whether the sound are enabled.
  final VKBaseBoolInt sound;

  const VKAccountPushConversationsItem({
    @required this.disabledUntil,
    @required this.peerId,
    @required this.sound,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled_until': disabledUntil,
      'peer_id': peerId,
      'sound': sound?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAccountPushConversationsItem.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAccountPushConversationsItem(
      disabledUntil: map['disabled_until'] as int,
      peerId: map['peer_id'] as int,
      sound: VKBaseBoolInt(map['sound']),
    );
  }
}
