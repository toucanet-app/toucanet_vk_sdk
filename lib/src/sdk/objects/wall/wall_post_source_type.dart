/// Type of post source.
class VKWallPostSourceType {
  final String value;

  const VKWallPostSourceType._(this.value);

  factory VKWallPostSourceType(value) {
    if (!values.contains(value)) return null;
    return VKWallPostSourceType._(value);
  }

  static const VKWallPostSourceType api = VKWallPostSourceType._('api');

  static const VKWallPostSourceType rss = VKWallPostSourceType._('rss');

  static const VKWallPostSourceType sms = VKWallPostSourceType._('sms');

  static const VKWallPostSourceType vk = VKWallPostSourceType._('vk');

  static const VKWallPostSourceType widget = VKWallPostSourceType._('widget');

  static List get values => const ['vk', 'widget', 'api', 'rss', 'sms'];

  @override
  String toString() => '$value';
}
