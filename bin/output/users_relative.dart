import 'package:meta/meta.dart';

class UsersRelative {
  /// Date of child birthday (format dd.mm.yyyy).
  final String birthDate;

  /// Relative ID.
  final int id;

  /// Name of relative.
  final String name;

  /// Relative type.
  final String type;

  const UsersRelative({
    this.birthDate,
    this.id,
    this.name,
    @required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'birth_date': birthDate,
      'id': id,
      'name': name,
      'type': type,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory UsersRelative.fromMap(Map<String, dynamic> map) {
    return UsersRelative(
      birthDate: map['birth_date'] as String,
      id: map['id'] as int,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
