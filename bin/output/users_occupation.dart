class UsersOccupation {
  /// ID of school, university, company group.
  final int id;

  /// Name of occupation.
  final String name;

  /// Type of occupation.
  final String type;

  const UsersOccupation({
    this.id,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'type': type,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory UsersOccupation.fromMap(Map<String, dynamic> map) {
    return UsersOccupation(
      id: map['id'] as int,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
