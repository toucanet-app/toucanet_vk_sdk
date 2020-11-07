import '../../objects/vk_objects.dart';

class VKFriendsGetMutualTargetUidsResponse {
  final List<VKFriendsMutualFriend> friendsGetMutualTargetUidsResponse;

  const VKFriendsGetMutualTargetUidsResponse({
    this.friendsGetMutualTargetUidsResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'friends_getMutual_target_uids_response':
          friendsGetMutualTargetUidsResponse?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKFriendsGetMutualTargetUidsResponse.fromMap(
      Map<String, dynamic> map) {
    return VKFriendsGetMutualTargetUidsResponse(
      friendsGetMutualTargetUidsResponse:
          map['friends_getMutual_target_uids_response']
              ?.map((item) => VKFriendsMutualFriend.fromMap(item)),
    );
  }
}
