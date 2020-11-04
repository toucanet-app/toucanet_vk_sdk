/// Application type.
class AppsAppType {
  final String value;

  const AppsAppType._(this.value);

  factory AppsAppType(value) {
    if (!values.contains(value)) return null;

    return AppsAppType._(value);
  }

  static const AppsAppType app = AppsAppType._('app');

  static const AppsAppType game = AppsAppType._('game');

  static const AppsAppType site = AppsAppType._('site');

  static const AppsAppType standalone = AppsAppType._('standalone');

  static const AppsAppType vkApp = AppsAppType._('vk_app');

  static const AppsAppType communityApp = AppsAppType._('community_app');

  static const AppsAppType html5Game = AppsAppType._('html5_game');

  static const AppsAppType miniApp = AppsAppType._('mini_app');

  static List get values => const [
        'app',
        'game',
        'site',
        'standalone',
        'vk_app',
        'community_app',
        'html5_game',
        'mini_app'
      ];

  @override
  String toString() => '$value';
}
