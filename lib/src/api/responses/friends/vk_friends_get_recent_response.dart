class VKFriendsGetRecentResponse {
  /// The list of User ID.
  final List<int> friendsGetRecentResponse;

  const VKFriendsGetRecentResponse({
    this.friendsGetRecentResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'friends_getRecent_response': friendsGetRecentResponse,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKFriendsGetRecentResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKFriendsGetRecentResponse(
      friendsGetRecentResponse: map['friends_getRecent_response'] as List<int>,
    );
  }
}
