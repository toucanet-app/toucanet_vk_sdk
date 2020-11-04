

class UsersSchool {
  /// City ID.
  final int city;

  /// School class letter.
  final String className;

  /// Country ID.
  final int country;

  /// School ID.
  final String id;

  /// School name.
  final String name;

  /// School type ID.
  final int type;

  /// School type name.
  final String typeStr;

  /// Year the user started to study.
  final int yearFrom;

  /// Graduation year.
  final int yearGraduated;

  /// Year the user finished to study.
  final int yearTo;

  const UsersSchool({
    this.city,
    this.className,
    this.country,
    this.id,
    this.name,
    this.type,
    this.typeStr,
    this.yearFrom,
    this.yearGraduated,
    this.yearTo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'city': city,
      'class': className,
      'country': country,
      'id': id,
      'name': name,
      'type': type,
      'type_str': typeStr,
      'year_from': yearFrom,
      'year_graduated': yearGraduated,
      'year_to': yearTo,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory UsersSchool.fromMap(Map<String, dynamic> map) {
    return UsersSchool(
      city: map['city'] as int,
      className: map['class'] as String,
      country: map['country'] as int,
      id: map['id'] as String,
      name: map['name'] as String,
      type: map['type'] as int,
      typeStr: map['type_str'] as String,
      yearFrom: map['year_from'] as int,
      yearGraduated: map['year_graduated'] as int,
      yearTo: map['year_to'] as int,
    );
  }
}
