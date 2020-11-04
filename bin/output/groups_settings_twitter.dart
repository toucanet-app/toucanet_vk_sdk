import 'package:meta/meta.dart';

class GroupsSettingsTwitter {
  final String status;

  final String name;

  const GroupsSettingsTwitter({
    @required this.status,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'name': name,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory GroupsSettingsTwitter.fromMap(Map<String, dynamic> map) {
    return GroupsSettingsTwitter(
      status: map['status'] as String,
      name: map['name'] as String,
    );
  }
}
