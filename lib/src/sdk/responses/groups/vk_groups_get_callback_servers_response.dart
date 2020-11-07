import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKGroupsGetCallbackServersResponse {
  final int count;

  final List<VKGroupsCallbackServer> items;

  const VKGroupsGetCallbackServersResponse({
    @required this.count,
    @required this.items,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsGetCallbackServersResponse.fromMap(Map<String, dynamic> map) {
    return VKGroupsGetCallbackServersResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKGroupsCallbackServer.fromMap(item)),
    );
  }
}
