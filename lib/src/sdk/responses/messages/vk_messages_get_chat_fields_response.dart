import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKMessagesGetChatFieldsResponse {
  /// Chat creator ID.
  final int adminId;

  /// Chat ID.
  final int id;

  /// Shows that user has been kicked from the chat.
  final VKBaseBoolInt kicked;

  /// Shows that user has been left the chat.
  final VKBaseBoolInt left;

  /// URL of the preview image with 100 px in width.
  final String photo100;

  /// URL of the preview image with 200 px in width.
  final String photo200;

  /// URL of the preview image with 50 px in width.
  final String photo50;

  final VKMessagesChatPushSettings pushSettings;

  /// Chat title.
  final String title;

  /// Chat type.
  final String type;

  final List<VKMessagesUserXtrInvitedBy> users;

  const VKMessagesGetChatFieldsResponse({
    @required this.adminId,
    @required this.id,
    this.kicked,
    this.left,
    this.photo100,
    this.photo200,
    this.photo50,
    this.pushSettings,
    this.title,
    @required this.type,
    @required this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admin_id': adminId,
      'id': id,
      'kicked': kicked?.value,
      'left': left?.value,
      'photo_100': photo100,
      'photo_200': photo200,
      'photo_50': photo50,
      'push_settings': pushSettings?.toMap(),
      'title': title,
      'type': type,
      'users': users?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesGetChatFieldsResponse.fromMap(Map<String, dynamic> map) {
    return VKMessagesGetChatFieldsResponse(
      adminId: map['admin_id'] as int,
      id: map['id'] as int,
      kicked: VKBaseBoolInt(map['kicked']),
      left: VKBaseBoolInt(map['left']),
      photo100: map['photo_100'] as String,
      photo200: map['photo_200'] as String,
      photo50: map['photo_50'] as String,
      pushSettings: VKMessagesChatPushSettings.fromMap(map['push_settings']),
      title: map['title'] as String,
      type: map['type'] as String,
      users:
          map['users']?.map((item) => VKMessagesUserXtrInvitedBy.fromMap(item)),
    );
  }
}
