/// Status of information about timetable.
class VKGroupsAddressWorkInfoStatus {
  final String value;

  const VKGroupsAddressWorkInfoStatus._(this.value);

  factory VKGroupsAddressWorkInfoStatus(value) {
    if (!values.contains(value)) return null;
    return VKGroupsAddressWorkInfoStatus._(value);
  }

  static const VKGroupsAddressWorkInfoStatus alwaysOpened =
      VKGroupsAddressWorkInfoStatus._('always_opened');

  static const VKGroupsAddressWorkInfoStatus foreverClosed =
      VKGroupsAddressWorkInfoStatus._('forever_closed');

  static const VKGroupsAddressWorkInfoStatus noInformation =
      VKGroupsAddressWorkInfoStatus._('no_information');

  static const VKGroupsAddressWorkInfoStatus temporarilyClosed =
      VKGroupsAddressWorkInfoStatus._('temporarily_closed');

  static const VKGroupsAddressWorkInfoStatus timetable =
      VKGroupsAddressWorkInfoStatus._('timetable');

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
