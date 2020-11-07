class VKFriendsGetOnlineResponse {
  /// The list of User ID.
  final List<int> friendsGetOnlineResponse;

  const VKFriendsGetOnlineResponse({
    this.friendsGetOnlineResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'friends_getOnline_response': friendsGetOnlineResponse,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKFriendsGetOnlineResponse.fromMap(Map<String, dynamic> map) {
    return VKFriendsGetOnlineResponse(
      friendsGetOnlineResponse: map['friends_getOnline_response'] as List<int>,
    );
  }
}
