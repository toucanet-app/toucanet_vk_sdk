class VKUsersCareer {
  /// City ID.
  final int cityId;

  /// Company name.
  final String company;

  /// Country ID.
  final int countryId;

  /// From year.
  final int from;

  /// Community ID.
  final int groupId;

  /// Career ID.
  final int id;

  /// Position.
  final String position;

  /// Till year.
  final int until;

  const VKUsersCareer({
    this.cityId,
    this.company,
    this.countryId,
    this.from,
    this.groupId,
    this.id,
    this.position,
    this.until,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'city_id': cityId,
      'company': company,
      'country_id': countryId,
      'from': from,
      'group_id': groupId,
      'id': id,
      'position': position,
      'until': until,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKUsersCareer.fromMap(Map<String, dynamic> map) {
    return VKUsersCareer(
      cityId: map['city_id'] as int,
      company: map['company'] as String,
      countryId: map['country_id'] as int,
      from: map['from'] as int,
      groupId: map['group_id'] as int,
      id: map['id'] as int,
      position: map['position'] as String,
      until: map['until'] as int,
    );
  }
}
