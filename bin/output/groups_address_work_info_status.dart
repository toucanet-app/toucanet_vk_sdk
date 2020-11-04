/// Status of information about timetable.
class GroupsAddressWorkInfoStatus {
  final String value;

  const GroupsAddressWorkInfoStatus._(this.value);

  factory GroupsAddressWorkInfoStatus(value) {
    if (!values.contains(value)) return null;

    return GroupsAddressWorkInfoStatus._(value);
  }

  static const GroupsAddressWorkInfoStatus noInformation =
      GroupsAddressWorkInfoStatus._('no_information');

  static const GroupsAddressWorkInfoStatus temporarilyClosed =
      GroupsAddressWorkInfoStatus._('temporarily_closed');

  static const GroupsAddressWorkInfoStatus alwaysOpened =
      GroupsAddressWorkInfoStatus._('always_opened');

  static const GroupsAddressWorkInfoStatus timetable =
      GroupsAddressWorkInfoStatus._('timetable');

  static const GroupsAddressWorkInfoStatus foreverClosed =
      GroupsAddressWorkInfoStatus._('forever_closed');

  static List get values => const [
        'no_information',
        'temporarily_closed',
        'always_opened',
        'timetable',
        'forever_closed'
      ];

  @override
  String toString() => '$value';
}
