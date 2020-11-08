import 'package:meta/meta.dart';

class VKGroupsTokenPermissionSetting {
  final String name;

  final int setting;

  const VKGroupsTokenPermissionSetting({
    @required this.name,
    @required this.setting,
  }) : assert(setting >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'setting': setting,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsTokenPermissionSetting.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKGroupsTokenPermissionSetting(
      name: map['name'] as String,
      setting: map['setting'] as int,
    );
  }
}
