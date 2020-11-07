/// .
class VKGroupsGroupWiki {
  final int value;

  const VKGroupsGroupWiki._(this.value);

  factory VKGroupsGroupWiki(value) {
    if (!values.contains(value)) return null;
    return VKGroupsGroupWiki._(value);
  }

  static const VKGroupsGroupWiki disabled = VKGroupsGroupWiki._(0);

  static const VKGroupsGroupWiki limited = VKGroupsGroupWiki._(2);

  static const VKGroupsGroupWiki open = VKGroupsGroupWiki._(1);

  static List get values => const [0, 1, 2];

  @override
  String toString() => '$value';
}
