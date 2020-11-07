import 'groups_address_timetable_day.dart';

class VKGroupsAddressTimetable {
  /// Timetable for friday.
  final VKGroupsAddressTimetableDay fri;

  /// Timetable for monday.
  final VKGroupsAddressTimetableDay mon;

  /// Timetable for saturday.
  final VKGroupsAddressTimetableDay sat;

  /// Timetable for sunday.
  final VKGroupsAddressTimetableDay sun;

  /// Timetable for thursday.
  final VKGroupsAddressTimetableDay thu;

  /// Timetable for tuesday.
  final VKGroupsAddressTimetableDay tue;

  /// Timetable for wednesday.
  final VKGroupsAddressTimetableDay wed;

  const VKGroupsAddressTimetable({
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

  factory VKGroupsAddressTimetable.fromMap(Map<String, dynamic> map) {
    return VKGroupsAddressTimetable(
      fri: VKGroupsAddressTimetableDay.fromMap(map['fri']),
      mon: VKGroupsAddressTimetableDay.fromMap(map['mon']),
      sat: VKGroupsAddressTimetableDay.fromMap(map['sat']),
      sun: VKGroupsAddressTimetableDay.fromMap(map['sun']),
      thu: VKGroupsAddressTimetableDay.fromMap(map['thu']),
      tue: VKGroupsAddressTimetableDay.fromMap(map['tue']),
      wed: VKGroupsAddressTimetableDay.fromMap(map['wed']),
    );
  }
}
