import 'package:meta/meta.dart';

class VKUsersRelative {
  /// Date of child birthday (format dd.mm.yyyy).
  final String birthDate;

  /// Relative ID.
  final int id;

  /// Name of relative.
  final String name;

  /// Relative type.
  final String type;

  const VKUsersRelative({
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

  factory VKUsersRelative.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKUsersRelative(
      birthDate: map['birth_date'] as String,
      id: map['id'] as int,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
