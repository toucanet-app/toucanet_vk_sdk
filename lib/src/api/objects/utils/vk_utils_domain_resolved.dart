import 'vk_utils_domain_resolved_type.dart';

class VKUtilsDomainResolved {
  /// Object ID.
  final int objectId;

  /// Group ID.
  final int groupId;

  final VKUtilsDomainResolvedType type;

  const VKUtilsDomainResolved({
    this.objectId,
    this.groupId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'object_id': objectId,
      'group_id': groupId,
      'type': type?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKUtilsDomainResolved.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKUtilsDomainResolved(
      objectId: map['object_id'] as int,
      groupId: map['group_id'] as int,
      type: VKUtilsDomainResolvedType(map['type']),
    );
  }
}
