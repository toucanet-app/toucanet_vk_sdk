import 'ads_access_role.dart';

class AdsAccesses {
  /// Client ID.
  final String clientId;

  final AdsAccessRole role;

  const AdsAccesses({
    this.clientId,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'client_id': clientId,
      'role': role?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory AdsAccesses.fromMap(Map<String, dynamic> map) {
    return AdsAccesses(
      clientId: map['client_id'] as String,
      role: AdsAccessRole(map['role']),
    );
  }
}
