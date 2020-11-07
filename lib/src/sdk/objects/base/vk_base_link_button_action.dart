import 'vk_base_link_button_action_type.dart';

class VKBaseLinkButtonAction {
  final VKBaseLinkButtonActionType type;

  /// Action URL.
  final String url;

  final String consumeReason;

  const VKBaseLinkButtonAction({
    this.type,
    this.url,
    this.consumeReason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type?.value,
      'url': url,
      'consume_reason': consumeReason,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBaseLinkButtonAction.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKBaseLinkButtonAction(
      type: VKBaseLinkButtonActionType(map['type']),
      url: map['url'] as String,
      consumeReason: map['consume_reason'] as String,
    );
  }
}
