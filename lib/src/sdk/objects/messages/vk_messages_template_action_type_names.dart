/// Template action type names.
class VKMessagesTemplateActionTypeNames {
  final String value;

  const VKMessagesTemplateActionTypeNames._(this.value);

  factory VKMessagesTemplateActionTypeNames(value) {
    if (!values.contains(value)) return null;
    return VKMessagesTemplateActionTypeNames._(value);
  }

  static const VKMessagesTemplateActionTypeNames location =
      VKMessagesTemplateActionTypeNames._('location');

  static const VKMessagesTemplateActionTypeNames openApp =
      VKMessagesTemplateActionTypeNames._('open_app');

  static const VKMessagesTemplateActionTypeNames openLink =
      VKMessagesTemplateActionTypeNames._('open_link');

  static const VKMessagesTemplateActionTypeNames openPhoto =
      VKMessagesTemplateActionTypeNames._('open_photo');

  static const VKMessagesTemplateActionTypeNames start =
      VKMessagesTemplateActionTypeNames._('start');

  static const VKMessagesTemplateActionTypeNames text =
      VKMessagesTemplateActionTypeNames._('text');

  static const VKMessagesTemplateActionTypeNames vkpay =
      VKMessagesTemplateActionTypeNames._('vkpay');

  static List get values => const [
        'text',
        'start',
        'location',
        'vkpay',
        'open_app',
        'open_photo',
        'open_link'
      ];

  @override
  String toString() => '$value';
}
