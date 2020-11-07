import 'package:meta/meta.dart';

import 'ads_access_role_public.dart';

class VKAdsUserSpecification {
  final int userId;

  final VKAdsAccessRolePublic role;

  final bool grantAccessToAllClients;

  final List<int> clientIds;

  final bool viewBudget;

  const VKAdsUserSpecification({
    @required this.userId,
    @required this.role,
    this.grantAccessToAllClients,
    this.clientIds,
    this.viewBudget,
  }) : assert(userId >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user_id': userId,
      'role': role?.value,
      'grant_access_to_all_clients': grantAccessToAllClients,
      'client_ids': clientIds,
      'view_budget': viewBudget,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsUserSpecification.fromMap(Map<String, dynamic> map) {
    return VKAdsUserSpecification(
      userId: map['user_id'] as int,
      role: VKAdsAccessRolePublic(map['role']),
      grantAccessToAllClients: map['grant_access_to_all_clients'] as bool,
      clientIds: map['client_ids'] as List<int>,
      viewBudget: map['view_budget'] as bool,
    );
  }
}
