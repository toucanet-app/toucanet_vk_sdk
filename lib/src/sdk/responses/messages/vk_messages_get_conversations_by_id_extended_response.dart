import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKMessagesGetConversationsByIdExtendedResponse {
  /// Total number.
  final int count;

  final List<VKMessagesConversation> items;

  final List<VKUsersUser> profiles;

  const VKMessagesGetConversationsByIdExtendedResponse({
    @required this.count,
    @required this.items,
    this.profiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap())?.toList(),
      'profiles': profiles?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesGetConversationsByIdExtendedResponse.fromMap(
      Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMessagesGetConversationsByIdExtendedResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map((item) => VKMessagesConversation.fromMap(item))
          ?.toList(),
      profiles:
          map['profiles']?.map((item) => VKUsersUser.fromMap(item))?.toList(),
    );
  }
}
