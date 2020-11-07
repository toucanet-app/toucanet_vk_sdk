import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKGroupsGetTokenPermissionsResponse {
  final int mask;

  final List<VKGroupsTokenPermissionSetting> permissions;

  const VKGroupsGetTokenPermissionsResponse({
    @required this.mask,
    @required this.permissions,
  }) : assert(mask >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mask': mask,
      'permissions': permissions?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsGetTokenPermissionsResponse.fromMap(
      Map<String, dynamic> map) {
    return VKGroupsGetTokenPermissionsResponse(
      mask: map['mask'] as int,
      permissions: map['permissions']
          ?.map((item) => VKGroupsTokenPermissionSetting.fromMap(item)),
    );
  }
}
