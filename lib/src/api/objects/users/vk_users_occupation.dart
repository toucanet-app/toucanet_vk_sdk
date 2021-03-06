class VKUsersOccupation {
  /// ID of school, university, company group.
  final int id;

  /// Name of occupation.
  final String name;

  /// Type of occupation.
  final String type;

  const VKUsersOccupation({
    this.id,
    this.name,
    this.type,
  }) : assert(id == null || id >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'type': type,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKUsersOccupation.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKUsersOccupation(
      id: map['id'] as int,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
