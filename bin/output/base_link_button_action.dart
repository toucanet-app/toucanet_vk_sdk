import 'base_link_button_action_type.dart';

class BaseLinkButtonAction {
  final BaseLinkButtonActionType type;

  /// Action URL.
  final String url;

  final String consumeReason;

  const BaseLinkButtonAction({
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

  factory BaseLinkButtonAction.fromMap(Map<String, dynamic> map) {
    return BaseLinkButtonAction(
      type: BaseLinkButtonActionType(map['type']),
      url: map['url'] as String,
      consumeReason: map['consume_reason'] as String,
    );
  }
}
