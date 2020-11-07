/// .
class VKGroupsGroupFullAgeLimits {
  final int value;

  const VKGroupsGroupFullAgeLimits._(this.value);

  factory VKGroupsGroupFullAgeLimits(value) {
    if (!values.contains(value)) return null;
    return VKGroupsGroupFullAgeLimits._(value);
  }

  static const VKGroupsGroupFullAgeLimits no = VKGroupsGroupFullAgeLimits._(1);

  static const VKGroupsGroupFullAgeLimits over16 =
      VKGroupsGroupFullAgeLimits._(2);

  static const VKGroupsGroupFullAgeLimits over18 =
      VKGroupsGroupFullAgeLimits._(3);

  static List get values => const [1, 2, 3];

  @override
  String toString() => '$value';
}
