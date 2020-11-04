/// Settings parameters.
class AccountPushParamsOnoff {
  final String value;

  const AccountPushParamsOnoff._(this.value);

  factory AccountPushParamsOnoff(value) {
    if (!values.contains(value)) return null;

    return AccountPushParamsOnoff._(value);
  }

  static const AccountPushParamsOnoff on = AccountPushParamsOnoff._('on');

  static const AccountPushParamsOnoff off = AccountPushParamsOnoff._('off');

  static List get values => const ['on', 'off'];

  @override
  String toString() => '$value';
}
