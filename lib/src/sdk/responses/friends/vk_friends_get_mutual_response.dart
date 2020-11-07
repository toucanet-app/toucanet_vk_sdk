class VKFriendsGetMutualResponse {
  /// The list of User ID.
  final List<int> friendsGetMutualResponse;

  const VKFriendsGetMutualResponse({
    this.friendsGetMutualResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'friends_getMutual_response': friendsGetMutualResponse,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKFriendsGetMutualResponse.fromMap(Map<String, dynamic> map) {
    return VKFriendsGetMutualResponse(
      friendsGetMutualResponse: map['friends_getMutual_response'] as List<int>,
    );
  }
}
