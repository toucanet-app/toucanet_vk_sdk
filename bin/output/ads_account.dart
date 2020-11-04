import 'ads_access_role.dart';
import 'base_bool_int.dart';
import 'ads_account_type.dart';
import 'package:meta/meta.dart';

class AdsAccount {
  final AdsAccessRole accessRole;

  /// Account ID.
  final int accountId;

  /// Information whether account is active.
  final BaseBoolInt accountStatus;

  final AdsAccountType accountType;

  /// Account name.
  final String accountName;

  const AdsAccount({
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

  factory AdsAccount.fromMap(Map<String, dynamic> map) {
    return AdsAccount(
      accessRole: AdsAccessRole(map['access_role']),
      accountId: map['account_id'] as int,
      accountStatus: BaseBoolInt(map['account_status']),
      accountType: AdsAccountType(map['account_type']),
      accountName: map['account_name'] as String,
    );
  }
}
