class VKFriendsGetAppUsersResponse {
  /// The list of User ID.
  final List<int> friendsGetAppUsersResponse;

  const VKFriendsGetAppUsersResponse({
    this.friendsGetAppUsersResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'friends_getAppUsers_response': friendsGetAppUsersResponse,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKFriendsGetAppUsersResponse.fromMap(Map<String, dynamic> map) {
    return VKFriendsGetAppUsersResponse(
      friendsGetAppUsersResponse:
          map['friends_getAppUsers_response'] as List<int>,
    );
  }
}
