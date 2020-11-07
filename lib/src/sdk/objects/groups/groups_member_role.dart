import 'groups_member_role_permission.dart';
import 'groups_member_role_status.dart';

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
      'permissions': permissions?.map((item) => item?.value),
      'role': role?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsMemberRole.fromMap(Map<String, dynamic> map) {
    return VKGroupsMemberRole(
      id: map['id'] as int,
      permissions:
          map['permissions']?.map((item) => VKGroupsMemberRolePermission(item)),
      role: VKGroupsMemberRoleStatus(map['role']),
    );
  }
}
