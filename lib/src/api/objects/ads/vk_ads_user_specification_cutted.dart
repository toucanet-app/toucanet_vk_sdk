import 'package:meta/meta.dart';

import 'vk_ads_access_role_public.dart';

class VKAdsUserSpecificationCutted {
  final int userId;

  final VKAdsAccessRolePublic role;

  final int clientId;

  final bool viewBudget;

  const VKAdsUserSpecificationCutted({
    @required this.userId,
    @required this.role,
    this.clientId,
    this.viewBudget,
  })  : assert(userId >= 0),
        assert(clientId == null || clientId >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user_id': userId,
      'role': role?.value,
      'client_id': clientId,
      'view_budget': viewBudget,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsUserSpecificationCutted.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsUserSpecificationCutted(
      userId: map['user_id'] as int,
      role: VKAdsAccessRolePublic(map['role']),
      clientId: map['client_id'] as int,
      viewBudget: map['view_budget'] as bool,
    );
  }
}
