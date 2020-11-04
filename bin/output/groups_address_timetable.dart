import 'groups_address_timetable_day.dart';

class GroupsAddressTimetable {
  /// Timetable for friday.
  final GroupsAddressTimetableDay fri;

  /// Timetable for monday.
  final GroupsAddressTimetableDay mon;

  /// Timetable for saturday.
  final GroupsAddressTimetableDay sat;

  /// Timetable for sunday.
  final GroupsAddressTimetableDay sun;

  /// Timetable for thursday.
  final GroupsAddressTimetableDay thu;

  /// Timetable for tuesday.
  final GroupsAddressTimetableDay tue;

  /// Timetable for wednesday.
  final GroupsAddressTimetableDay wed;

  const GroupsAddressTimetable({
    this.fri,
    this.mon,
    this.sat,
    this.sun,
    this.thu,
    this.tue,
    this.wed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fri': fri?.toMap(),
      'mon': mon?.toMap(),
      'sat': sat?.toMap(),
      'sun': sun?.toMap(),
      'thu': thu?.toMap(),
      'tue': tue?.toMap(),
      'wed': wed?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory GroupsAddressTimetable.fromMap(Map<String, dynamic> map) {
    return GroupsAddressTimetable(
      fri: GroupsAddressTimetableDay.fromMap(map['fri']),
      mon: GroupsAddressTimetableDay.fromMap(map['mon']),
      sat: GroupsAddressTimetableDay.fromMap(map['sat']),
      sun: GroupsAddressTimetableDay.fromMap(map['sun']),
      thu: GroupsAddressTimetableDay.fromMap(map['thu']),
      tue: GroupsAddressTimetableDay.fromMap(map['tue']),
      wed: GroupsAddressTimetableDay.fromMap(map['wed']),
    );
  }
}
