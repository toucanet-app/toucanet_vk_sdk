/// Settings parameters.
class VKAccountPushParamsMode {
  final String value;

  const VKAccountPushParamsMode._(this.value);

  factory VKAccountPushParamsMode(value) {
    if (!values.contains(value)) return null;
    return VKAccountPushParamsMode._(value);
  }

  static const VKAccountPushParamsMode noSound =
      VKAccountPushParamsMode._('no_sound');

  static const VKAccountPushParamsMode noText =
      VKAccountPushParamsMode._('no_text');

  static const VKAccountPushParamsMode off = VKAccountPushParamsMode._('off');

  static const VKAccountPushParamsMode on = VKAccountPushParamsMode._('on');

  static List get values => const ['on', 'off', 'no_sound', 'no_text'];

  @override
  String toString() => '$value';
}
