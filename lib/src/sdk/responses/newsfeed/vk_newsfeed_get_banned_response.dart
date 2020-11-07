class VKNewsfeedGetBannedResponse {
  /// The list of Community ID.
  final List<int> groups;

  /// The list of User ID.
  final List<int> members;

  const VKNewsfeedGetBannedResponse({
    this.groups,
    this.members,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups': groups,
      'members': members,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNewsfeedGetBannedResponse.fromMap(Map<String, dynamic> map) {
    return VKNewsfeedGetBannedResponse(
      groups: map['groups'] as List<int>,
      members: map['members'] as List<int>,
    );
  }
}
