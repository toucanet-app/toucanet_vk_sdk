/// .
class VKGroupsGroupAgeLimits {
  final int value;

  const VKGroupsGroupAgeLimits._(this.value);

  factory VKGroupsGroupAgeLimits(value) {
    if (!values.contains(value)) return null;
    return VKGroupsGroupAgeLimits._(value);
  }

  static const VKGroupsGroupAgeLimits age16Plus = VKGroupsGroupAgeLimits._(2);

  static const VKGroupsGroupAgeLimits age18Plus = VKGroupsGroupAgeLimits._(3);

  static const VKGroupsGroupAgeLimits unlimited = VKGroupsGroupAgeLimits._(1);

  static List get values => const [1, 2, 3];

  @override
  String toString() => '$value';
}
