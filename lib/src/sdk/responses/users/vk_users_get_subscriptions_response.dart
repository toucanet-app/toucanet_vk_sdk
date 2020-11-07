import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKUsersGetSubscriptionsResponse {
  final VKUsersUsersArray users;

  final VKGroupsGroupsArray groups;

  const VKUsersGetSubscriptionsResponse({
    @required this.users,
    @required this.groups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'users': users?.toMap(),
      'groups': groups?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKUsersGetSubscriptionsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKUsersGetSubscriptionsResponse(
      users: VKUsersUsersArray.fromMap(map['users']),
      groups: VKGroupsGroupsArray.fromMap(map['groups']),
    );
  }
}
