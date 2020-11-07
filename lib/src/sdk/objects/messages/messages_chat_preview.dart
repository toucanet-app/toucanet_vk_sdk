class VKMessagesChatPreview {
  final int adminId;

  final bool joined;

  final int localId;

  final List<int> members;

  final int membersCount;

  final String title;

  const VKMessagesChatPreview({
    this.adminId,
    this.joined,
    this.localId,
    this.members,
    this.membersCount,
    this.title,
  })  : assert(adminId >= 0),
        assert(membersCount >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admin_id': adminId,
      'joined': joined,
      'local_id': localId,
      'members': members,
      'members_count': membersCount,
      'title': title,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesChatPreview.fromMap(Map<String, dynamic> map) {
    return VKMessagesChatPreview(
      adminId: map['admin_id'] as int,
      joined: map['joined'] as bool,
      localId: map['local_id'] as int,
      members: map['members'] as List<int>,
      membersCount: map['members_count'] as int,
      title: map['title'] as String,
    );
  }
}
