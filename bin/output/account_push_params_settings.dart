/// Settings parameters.
class AccountPushParamsSettings {
  final String value;

  const AccountPushParamsSettings._(this.value);

  factory AccountPushParamsSettings(value) {
    if (!values.contains(value)) return null;

    return AccountPushParamsSettings._(value);
  }

  static const AccountPushParamsSettings on = AccountPushParamsSettings._('on');

  static const AccountPushParamsSettings off =
      AccountPushParamsSettings._('off');

  static const AccountPushParamsSettings frOfFr =
      AccountPushParamsSettings._('fr_of_fr');

  static List get values => const ['on', 'off', 'fr_of_fr'];

  @override
  String toString() => '$value';
}
