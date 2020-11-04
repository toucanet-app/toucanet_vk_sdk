/// Template action type names.
class MessagesTemplateActionTypeNames {
  final String value;

  const MessagesTemplateActionTypeNames._(this.value);

  factory MessagesTemplateActionTypeNames(value) {
    if (!values.contains(value)) return null;

    return MessagesTemplateActionTypeNames._(value);
  }

  static const MessagesTemplateActionTypeNames text =
      MessagesTemplateActionTypeNames._('text');

  static const MessagesTemplateActionTypeNames start =
      MessagesTemplateActionTypeNames._('start');

  static const MessagesTemplateActionTypeNames location =
      MessagesTemplateActionTypeNames._('location');

  static const MessagesTemplateActionTypeNames vkpay =
      MessagesTemplateActionTypeNames._('vkpay');

  static const MessagesTemplateActionTypeNames openApp =
      MessagesTemplateActionTypeNames._('open_app');

  static const MessagesTemplateActionTypeNames openPhoto =
      MessagesTemplateActionTypeNames._('open_photo');

  static const MessagesTemplateActionTypeNames openLink =
      MessagesTemplateActionTypeNames._('open_link');

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
