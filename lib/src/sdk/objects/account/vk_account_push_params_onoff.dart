/// Settings parameters.
class VKAccountPushParamsOnoff {
  final String value;

  const VKAccountPushParamsOnoff._(this.value);

  factory VKAccountPushParamsOnoff(value) {
    if (!values.contains(value)) return null;
    return VKAccountPushParamsOnoff._(value);
  }

  static const VKAccountPushParamsOnoff off = VKAccountPushParamsOnoff._('off');

  static const VKAccountPushParamsOnoff on = VKAccountPushParamsOnoff._('on');

  static List get values => const ['on', 'off'];

  @override
  String toString() => '$value';
}
