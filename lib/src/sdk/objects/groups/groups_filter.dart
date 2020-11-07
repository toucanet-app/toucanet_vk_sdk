/// .
class VKGroupsFilter {
  final String value;

  const VKGroupsFilter._(this.value);

  factory VKGroupsFilter(value) {
    if (!values.contains(value)) return null;
    return VKGroupsFilter._(value);
  }

  static const VKGroupsFilter admin = VKGroupsFilter._('admin');

  static const VKGroupsFilter advertiser = VKGroupsFilter._('advertiser');

  static const VKGroupsFilter editor = VKGroupsFilter._('editor');

  static const VKGroupsFilter events = VKGroupsFilter._('events');

  static const VKGroupsFilter groups = VKGroupsFilter._('groups');

  static const VKGroupsFilter hasAddresses = VKGroupsFilter._('has_addresses');

  static const VKGroupsFilter moder = VKGroupsFilter._('moder');

  static const VKGroupsFilter publics = VKGroupsFilter._('publics');

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
