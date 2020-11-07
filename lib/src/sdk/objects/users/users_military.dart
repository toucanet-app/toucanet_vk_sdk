import 'package:meta/meta.dart';

class VKUsersMilitary {
  /// Country ID.
  final int countryId;

  /// From year.
  final int from;

  /// Military ID.
  final int id;

  /// Unit name.
  final String unit;

  /// Unit ID.
  final int unitId;

  /// Till year.
  final int until;

  const VKUsersMilitary({
    @required this.countryId,
    this.from,
    this.id,
    @required this.unit,
    @required this.unitId,
    this.until,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'country_id': countryId,
      'from': from,
      'id': id,
      'unit': unit,
      'unit_id': unitId,
      'until': until,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKUsersMilitary.fromMap(Map<String, dynamic> map) {
    return VKUsersMilitary(
      countryId: map['country_id'] as int,
      from: map['from'] as int,
      id: map['id'] as int,
      unit: map['unit'] as String,
      unitId: map['unit_id'] as int,
      until: map['until'] as int,
    );
  }
}
