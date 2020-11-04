/// Settings parameters.
class AccountPushParamsMode {
  final String value;

  const AccountPushParamsMode._(this.value);

  factory AccountPushParamsMode(value) {
    if (!values.contains(value)) return null;

    return AccountPushParamsMode._(value);
  }

  static const AccountPushParamsMode on = AccountPushParamsMode._('on');

  static const AccountPushParamsMode off = AccountPushParamsMode._('off');

  static const AccountPushParamsMode noSound = AccountPushParamsMode._('no_sound');

  static const AccountPushParamsMode noText = AccountPushParamsMode._('no_text');

  static List get values => const ['on', 'off', 'no_sound', 'no_text'];

  @override
  String toString() => '$value';
}
