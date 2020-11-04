import 'package:meta/meta.dart';

class GroupsAddressesInfo {
  /// Information whether addresses is enabled.
  final bool isEnabled;

  /// Main address id for group.
  final int mainAddressId;

  const GroupsAddressesInfo({
    @required this.isEnabled,
    this.mainAddressId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'is_enabled': isEnabled,
      'main_address_id': mainAddressId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory GroupsAddressesInfo.fromMap(Map<String, dynamic> map) {
    return GroupsAddressesInfo(
      isEnabled: map['is_enabled'] as bool,
      mainAddressId: map['main_address_id'] as int,
    );
  }
}
