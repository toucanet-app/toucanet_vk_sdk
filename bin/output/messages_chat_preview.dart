

class MessagesChatPreview {
  final int adminId;

  final bool joined;

  final int localId;

  final List<int> members;

  final int membersCount;

  final String title;

  const MessagesChatPreview({
    this.adminId,
    this.joined,
    this.localId,
    this.members,
    this.membersCount,
    this.title,
  });

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

  factory MessagesChatPreview.fromMap(Map<String, dynamic> map) {
    return MessagesChatPreview(
      adminId: map['admin_id'] as int,
      joined: map['joined'] as bool,
      localId: map['local_id'] as int,
      members: map['members'] as List<int>,
      membersCount: map['members_count'] as int,
      title: map['title'] as String,
    );
  }
}
