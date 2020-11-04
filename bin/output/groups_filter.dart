/// .
class GroupsFilter {
  final String value;

  const GroupsFilter._(this.value);

  factory GroupsFilter(value) {
    if (!values.contains(value)) return null;

    return GroupsFilter._(value);
  }

  static const GroupsFilter admin = GroupsFilter._('admin');

  static const GroupsFilter editor = GroupsFilter._('editor');

  static const GroupsFilter moder = GroupsFilter._('moder');

  static const GroupsFilter advertiser = GroupsFilter._('advertiser');

  static const GroupsFilter groups = GroupsFilter._('groups');

  static const GroupsFilter publics = GroupsFilter._('publics');

  static const GroupsFilter events = GroupsFilter._('events');

  static const GroupsFilter hasAddresses = GroupsFilter._('has_addresses');

  static List get values => const [
        'admin',
        'editor',
        'moder',
        'advertiser',
        'groups',
        'publics',
        'events',
        'has_addresses'
      ];

  @override
  String toString() => '$value';
}
