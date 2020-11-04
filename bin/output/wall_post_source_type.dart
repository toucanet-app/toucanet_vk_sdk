/// Type of post source.
class WallPostSourceType {
  final String value;

  const WallPostSourceType._(this.value);

  factory WallPostSourceType(value) {
    if (!values.contains(value)) return null;

    return WallPostSourceType._(value);
  }

  static const WallPostSourceType vk = WallPostSourceType._('vk');

  static const WallPostSourceType widget = WallPostSourceType._('widget');

  static const WallPostSourceType api = WallPostSourceType._('api');

  static const WallPostSourceType rss = WallPostSourceType._('rss');

  static const WallPostSourceType sms = WallPostSourceType._('sms');

  static List get values => const ['vk', 'widget', 'api', 'rss', 'sms'];

  @override
  String toString() => '$value';
}
