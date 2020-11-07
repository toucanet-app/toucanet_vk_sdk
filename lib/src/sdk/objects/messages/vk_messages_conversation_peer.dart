import 'package:meta/meta.dart';

import 'vk_messages_conversation_peer_type.dart';

class VKMessagesConversationPeer {
  final int id;

  final int localId;

  final VKMessagesConversationPeerType type;

  const VKMessagesConversationPeer({
    @required this.id,
    this.localId,
    @required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'local_id': localId,
      'type': type?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesConversationPeer.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMessagesConversationPeer(
      id: map['id'] as int,
      localId: map['local_id'] as int,
      type: VKMessagesConversationPeerType(map['type']),
    );
  }
}
