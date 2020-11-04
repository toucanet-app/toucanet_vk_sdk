import 'messages_conversation_peer_type.dart';
import 'package:meta/meta.dart';

class MessagesConversationPeer {
  final int id;

  final int localId;

  final MessagesConversationPeerType type;

  const MessagesConversationPeer({
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

  factory MessagesConversationPeer.fromMap(Map<String, dynamic> map) {
    return MessagesConversationPeer(
      id: map['id'] as int,
      localId: map['local_id'] as int,
      type: MessagesConversationPeerType(map['type']),
    );
  }
}
