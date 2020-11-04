import 'base_bool_int.dart';
import 'package:meta/meta.dart';

class AccountPushConversationsItem {
  /// Time until that notifications are disabled in seconds.
  final int disabledUntil;

  /// Peer ID.
  final int peerId;

  /// Information whether the sound are enabled.
  final BaseBoolInt sound;

  const AccountPushConversationsItem({
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

  factory AccountPushConversationsItem.fromMap(Map<String, dynamic> map) {
    return AccountPushConversationsItem(
      disabledUntil: map['disabled_until'] as int,
      peerId: map['peer_id'] as int,
      sound: BaseBoolInt(map['sound']),
    );
  }
}
