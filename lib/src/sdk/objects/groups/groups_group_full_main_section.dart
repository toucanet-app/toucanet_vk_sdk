/// Main section of community.
class VKGroupsGroupFullMainSection {
  final int value;

  const VKGroupsGroupFullMainSection._(this.value);

  factory VKGroupsGroupFullMainSection(value) {
    if (!values.contains(value)) return null;
    return VKGroupsGroupFullMainSection._(value);
  }

  static const VKGroupsGroupFullMainSection absent =
      VKGroupsGroupFullMainSection._(0);

  static const VKGroupsGroupFullMainSection audio =
      VKGroupsGroupFullMainSection._(3);

  static const VKGroupsGroupFullMainSection market =
      VKGroupsGroupFullMainSection._(5);

  static const VKGroupsGroupFullMainSection photos =
      VKGroupsGroupFullMainSection._(1);

  static const VKGroupsGroupFullMainSection topics =
      VKGroupsGroupFullMainSection._(2);

  static const VKGroupsGroupFullMainSection video =
      VKGroupsGroupFullMainSection._(4);

  static List get values => const [0, 1, 2, 3, 4, 5];

  @override
  String toString() => '$value';
}
