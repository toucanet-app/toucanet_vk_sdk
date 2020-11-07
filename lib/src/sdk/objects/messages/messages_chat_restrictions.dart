class VKMessagesChatRestrictions {
  /// Only admins can promote users to admins.
  final bool adminsPromoteUsers;

  /// Only admins can change chat info.
  final bool onlyAdminsEditInfo;

  /// Only admins can edit pinned message.
  final bool onlyAdminsEditPin;

  /// Only admins can invite users to this chat.
  final bool onlyAdminsInvite;

  /// Only admins can kick users from this chat.
  final bool onlyAdminsKick;

  const VKMessagesChatRestrictions({
    this.adminsPromoteUsers,
    this.onlyAdminsEditInfo,
    this.onlyAdminsEditPin,
    this.onlyAdminsInvite,
    this.onlyAdminsKick,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admins_promote_users': adminsPromoteUsers,
      'only_admins_edit_info': onlyAdminsEditInfo,
      'only_admins_edit_pin': onlyAdminsEditPin,
      'only_admins_invite': onlyAdminsInvite,
      'only_admins_kick': onlyAdminsKick,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesChatRestrictions.fromMap(Map<String, dynamic> map) {
    return VKMessagesChatRestrictions(
      adminsPromoteUsers: map['admins_promote_users'] as bool,
      onlyAdminsEditInfo: map['only_admins_edit_info'] as bool,
      onlyAdminsEditPin: map['only_admins_edit_pin'] as bool,
      onlyAdminsInvite: map['only_admins_invite'] as bool,
      onlyAdminsKick: map['only_admins_kick'] as bool,
    );
  }
}
