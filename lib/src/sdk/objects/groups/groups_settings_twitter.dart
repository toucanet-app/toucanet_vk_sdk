import 'package:meta/meta.dart';

class VKGroupsSettingsTwitter {
  final String status;

  final String name;

  const VKGroupsSettingsTwitter({
    @required this.status,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'name': name,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsSettingsTwitter.fromMap(Map<String, dynamic> map) {
    return VKGroupsSettingsTwitter(
      status: map['status'] as String,
      name: map['name'] as String,
    );
  }
}
