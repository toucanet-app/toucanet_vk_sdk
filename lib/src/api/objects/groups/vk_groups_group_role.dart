/// .
class VKGroupsGroupRole {
  final String value;

  const VKGroupsGroupRole._(this.value);

  factory VKGroupsGroupRole(value) {
    if (!values.contains(value)) return null;
    return VKGroupsGroupRole._(value);
  }

  static const VKGroupsGroupRole administrator =
      VKGroupsGroupRole._('administrator');

  static const VKGroupsGroupRole advertiser = VKGroupsGroupRole._('advertiser');

  static const VKGroupsGroupRole editor = VKGroupsGroupRole._('editor');

  static const VKGroupsGroupRole moderator = VKGroupsGroupRole._('moderator');

  static List get values =>
      const ['moderator', 'editor', 'administrator', 'advertiser'];

  @override
  String toString() => '$value';
}
