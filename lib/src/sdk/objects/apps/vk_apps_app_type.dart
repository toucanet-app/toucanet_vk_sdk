/// Application type.
class VKAppsAppType {
  final String value;

  const VKAppsAppType._(this.value);

  factory VKAppsAppType(value) {
    if (!values.contains(value)) return null;
    return VKAppsAppType._(value);
  }

  static const VKAppsAppType app = VKAppsAppType._('app');

  static const VKAppsAppType communityApp = VKAppsAppType._('community_app');

  static const VKAppsAppType game = VKAppsAppType._('game');

  static const VKAppsAppType html5Game = VKAppsAppType._('html5_game');

  static const VKAppsAppType miniApp = VKAppsAppType._('mini_app');

  static const VKAppsAppType site = VKAppsAppType._('site');

  static const VKAppsAppType standalone = VKAppsAppType._('standalone');

  static const VKAppsAppType vkApp = VKAppsAppType._('vk_app');

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
