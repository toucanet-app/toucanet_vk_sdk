class VKGroupsContactsItem {
  /// Contact description.
  final String desc;

  /// Contact email.
  final String email;

  /// Contact phone.
  final String phone;

  /// User ID.
  final int userId;

  const VKGroupsContactsItem({
    this.desc,
    this.email,
    this.phone,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desc': desc,
      'email': email,
      'phone': phone,
      'user_id': userId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsContactsItem.fromMap(Map<String, dynamic> map) {
    return VKGroupsContactsItem(
      desc: map['desc'] as String,
      email: map['email'] as String,
      phone: map['phone'] as String,
      userId: map['user_id'] as int,
    );
  }
}
