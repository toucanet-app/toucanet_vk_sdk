import 'package:meta/meta.dart';

class GroupsTokenPermissionSetting {
  final String name;

  final int setting;

  const GroupsTokenPermissionSetting({
    @required this.name,
    @required this.setting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'setting': setting,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory GroupsTokenPermissionSetting.fromMap(Map<String, dynamic> map) {
    return GroupsTokenPermissionSetting(
      name: map['name'] as String,
      setting: map['setting'] as int,
    );
  }
}
