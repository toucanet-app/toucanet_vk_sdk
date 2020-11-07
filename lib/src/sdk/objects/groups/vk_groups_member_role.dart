import 'vk_groups_member_role_permission.dart';
import 'vk_groups_member_role_status.dart';

class VKGroupsMemberRole {
  /// User ID.
  final int id;

  final List<VKGroupsMemberRolePermission> permissions;

  final VKGroupsMemberRoleStatus role;

  const VKGroupsMemberRole({
    this.id,
    this.permissions,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'permissions': permissions
          ?.map(
            (item) => item?.value,
          )
          ?.toList(),
      'role': role?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsMemberRole.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKGroupsMemberRole(
      id: map['id'] as int,
      permissions: map['permissions']
          ?.map<VKGroupsMemberRolePermission>(
            (item) => VKGroupsMemberRolePermission(item),
          )
          ?.toList(),
      role: VKGroupsMemberRoleStatus(map['role']),
    );
  }
}
