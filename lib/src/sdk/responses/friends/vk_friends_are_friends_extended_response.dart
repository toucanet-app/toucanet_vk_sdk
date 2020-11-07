import '../../objects/vk_objects.dart';

class VKFriendsAreFriendsExtendedResponse {
  final List<VKFriendsFriendExtendedStatus> friendsAreFriendsExtendedResponse;

  const VKFriendsAreFriendsExtendedResponse({
    this.friendsAreFriendsExtendedResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'friends_areFriends_extended_response':
          friendsAreFriendsExtendedResponse?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKFriendsAreFriendsExtendedResponse.fromMap(
      Map<String, dynamic> map) {
    return VKFriendsAreFriendsExtendedResponse(
      friendsAreFriendsExtendedResponse:
          map['friends_areFriends_extended_response']
              ?.map((item) => VKFriendsFriendExtendedStatus.fromMap(item)),
    );
  }
}
