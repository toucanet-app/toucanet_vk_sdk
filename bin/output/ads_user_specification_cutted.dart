import 'ads_access_role_public.dart';
import 'package:meta/meta.dart';

class AdsUserSpecificationCutted {
  final int userId;

  final AdsAccessRolePublic role;

  final int clientId;

  final bool viewBudget;

  const AdsUserSpecificationCutted({
    @required this.userId,
    @required this.role,
    this.clientId,
    this.viewBudget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user_id': userId,
      'role': role?.value,
      'client_id': clientId,
      'view_budget': viewBudget,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory AdsUserSpecificationCutted.fromMap(Map<String, dynamic> map) {
    return AdsUserSpecificationCutted(
      userId: map['user_id'] as int,
      role: AdsAccessRolePublic(map['role']),
      clientId: map['client_id'] as int,
      viewBudget: map['view_budget'] as bool,
    );
  }
}
