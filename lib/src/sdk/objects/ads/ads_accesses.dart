import 'ads_access_role.dart';

class VKAdsAccesses {
  /// Client ID.
  final String clientId;

  final VKAdsAccessRole role;

  const VKAdsAccesses({
    this.clientId,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'client_id': clientId,
      'role': role?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsAccesses.fromMap(Map<String, dynamic> map) {
    return VKAdsAccesses(
      clientId: map['client_id'] as String,
      role: VKAdsAccessRole(map['role']),
    );
  }
}
