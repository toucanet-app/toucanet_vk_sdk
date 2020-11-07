import '../../objects/vk_objects.dart';

class VKFriendsAreFriendsResponse {
  final List<VKFriendsFriendStatus> friendsAreFriendsResponse;

  const VKFriendsAreFriendsResponse({
    this.friendsAreFriendsResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'friends_areFriends_response':
          friendsAreFriendsResponse?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKFriendsAreFriendsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKFriendsAreFriendsResponse(
      friendsAreFriendsResponse: map['friends_areFriends_response']
          ?.map((item) => VKFriendsFriendStatus.fromMap(item))
          ?.toList(),
    );
  }
}
