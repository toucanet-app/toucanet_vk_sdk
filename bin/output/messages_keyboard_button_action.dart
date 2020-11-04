import 'messages_template_action_type_names.dart';
import 'package:meta/meta.dart';

class MessagesKeyboardButtonAction {
  /// Fragment value in app link like vk.com/app{app_id}_-654321#hash.
  final int appId;

  /// Fragment value in app link like vk.com/app123456_-654321#{hash}.
  final String hash;

  /// Label for button.
  final String label;

  /// link for button.
  final String link;

  /// Fragment value in app link like vk.com/app123456_{owner_id}#hash.
  final int ownerId;

  /// Additional data sent along with message for developer convenience.
  final String payload;

  /// Button type.
  final MessagesTemplateActionTypeNames type;

  const MessagesKeyboardButtonAction({
    this.appId,
    this.hash,
    this.label,
    this.link,
    this.ownerId,
    this.payload,
    @required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'app_id': appId,
      'hash': hash,
      'label': label,
      'link': link,
      'owner_id': ownerId,
      'payload': payload,
      'type': type?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory MessagesKeyboardButtonAction.fromMap(Map<String, dynamic> map) {
    return MessagesKeyboardButtonAction(
      appId: map['app_id'] as int,
      hash: map['hash'] as String,
      label: map['label'] as String,
      link: map['link'] as String,
      ownerId: map['owner_id'] as int,
      payload: map['payload'] as String,
      type: MessagesTemplateActionTypeNames(map['type']),
    );
  }
}
