import 'groups_member_role_permission.dart';
import 'groups_member_role_status.dart';

class GroupsMemberRole {
  /// User ID.
  final int id;

  final List<GroupsMemberRolePermission> permissions;

  final GroupsMemberRoleStatus role;

  const GroupsMemberRole({
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

  factory GroupsMemberRole.fromMap(Map<String, dynamic> map) {
    return GroupsMemberRole(
      id: map['id'] as int,
      permissions: map['permissions']?.map((item) => GroupsMemberRolePermission(item)),
      role: GroupsMemberRoleStatus(map['role']),
    );
  }
}
