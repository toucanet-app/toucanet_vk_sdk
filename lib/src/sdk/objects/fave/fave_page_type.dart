/// .
class VKFavePageType {
  final String value;

  const VKFavePageType._(this.value);

  factory VKFavePageType(value) {
    if (!values.contains(value)) return null;
    return VKFavePageType._(value);
  }

  static const VKFavePageType group = VKFavePageType._('group');

  static const VKFavePageType hints = VKFavePageType._('hints');

  static const VKFavePageType user = VKFavePageType._('user');

  static List get values => const ['user', 'group', 'hints'];

  @override
  String toString() => '$value';
}
