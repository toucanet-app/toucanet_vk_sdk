/// Object type.
class VKSearchHintType {
  final String value;

  const VKSearchHintType._(this.value);

  factory VKSearchHintType(value) {
    if (!values.contains(value)) return null;
    return VKSearchHintType._(value);
  }

  static const VKSearchHintType app = VKSearchHintType._('app');

  static const VKSearchHintType group = VKSearchHintType._('group');

  static const VKSearchHintType html5Game = VKSearchHintType._('html5_game');

  static const VKSearchHintType profile = VKSearchHintType._('profile');

  static const VKSearchHintType vkApp = VKSearchHintType._('vk_app');

  static List get values =>
      const ['group', 'profile', 'vk_app', 'app', 'html5_game'];

  @override
  String toString() => '$value';
}
