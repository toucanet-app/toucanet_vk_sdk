import '../../objects/vk_objects.dart';

class VKUsersGetResponse {
  final List<VKUsersUserXtrCounters> usersGetResponse;

  const VKUsersGetResponse({
    this.usersGetResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'users_get_response': usersGetResponse?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKUsersGetResponse.fromMap(Map<String, dynamic> map) {
    return VKUsersGetResponse(
      usersGetResponse: map['users_get_response']
          ?.map((item) => VKUsersUserXtrCounters.fromMap(item)),
    );
  }
}
