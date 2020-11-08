/// Settings parameters.
class VKAccountPushParamsSettings {
  final String value;

  const VKAccountPushParamsSettings._(this.value);

  factory VKAccountPushParamsSettings(value) {
    if (!values.contains(value)) return null;
    return VKAccountPushParamsSettings._(value);
  }

  static const VKAccountPushParamsSettings frOfFr =
      VKAccountPushParamsSettings._('fr_of_fr');

  static const VKAccountPushParamsSettings off =
      VKAccountPushParamsSettings._('off');

  static const VKAccountPushParamsSettings on =
      VKAccountPushParamsSettings._('on');

  static List get values => const ['on', 'off', 'fr_of_fr'];

  @override
  String toString() => '$value';
}
