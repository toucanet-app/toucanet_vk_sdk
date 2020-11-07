import '../../objects/vk_objects.dart';

class VKFriendsGetByPhonesResponse {
  final List<VKFriendsUserXtrPhone> friendsGetByPhonesResponse;

  const VKFriendsGetByPhonesResponse({
    this.friendsGetByPhonesResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'friends_getByPhones_response':
          friendsGetByPhonesResponse?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKFriendsGetByPhonesResponse.fromMap(Map<String, dynamic> map) {
    return VKFriendsGetByPhonesResponse(
      friendsGetByPhonesResponse: map['friends_getByPhones_response']
          ?.map((item) => VKFriendsUserXtrPhone.fromMap(item)),
    );
  }
}
