import 'package:meta/meta.dart';

import '../base/base_bool_int.dart';
import 'ads_access_role.dart';
import 'ads_account_type.dart';

class VKAdsAccount {
  final VKAdsAccessRole accessRole;

  /// Account ID.
  final int accountId;

  /// Information whether account is active.
  final VKBaseBoolInt accountStatus;

  final VKAdsAccountType accountType;

  /// Account name.
  final String accountName;

  const VKAdsAccount({
    @required this.accessRole,
    @required this.accountId,
    @required this.accountStatus,
    @required this.accountType,
    @required this.accountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access_role': accessRole?.value,
      'account_id': accountId,
      'account_status': accountStatus?.value,
      'account_type': accountType?.value,
      'account_name': accountName,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsAccount.fromMap(Map<String, dynamic> map) {
    return VKAdsAccount(
      accessRole: VKAdsAccessRole(map['access_role']),
      accountId: map['account_id'] as int,
      accountStatus: VKBaseBoolInt(map['account_status']),
      accountType: VKAdsAccountType(map['account_type']),
      accountName: map['account_name'] as String,
    );
  }
}
