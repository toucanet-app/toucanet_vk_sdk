import '../../objects/vk_objects.dart';

class VKUtilsResolveScreenNameResponse {
  /// Object ID.
  final int objectId;

  /// Group ID.
  final int groupId;

  final VKUtilsDomainResolvedType type;

  const VKUtilsResolveScreenNameResponse({
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

  factory VKUtilsResolveScreenNameResponse.fromMap(Map<String, dynamic> map) {
    return VKUtilsResolveScreenNameResponse(
      objectId: map['object_id'] as int,
      groupId: map['group_id'] as int,
      type: VKUtilsDomainResolvedType(map['type']),
    );
  }
}
