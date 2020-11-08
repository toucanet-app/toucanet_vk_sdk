import 'dart:math';
import 'package:meta/meta.dart';

import '../vk_client.dart';
import '../responses/vk_responses.dart';

class VKMessages {
  final VKClient client;

  const VKMessages({@required this.client}) : assert(client != null);

  Future<VKMessagesGetConversationsResponse> getConversations(
    int offset, {
    int count = 10,
  }) async {
    return client.call(
      'messages.getConversations',
      {
        'offset': '$offset',
        'count': '$count',
        'extended': '1',
        'filter': 'all',
        'fields': '${[
          'photo_200_orig',
          'photo_50',
          'photo_100',
          'status',
          'counters',
          'online'
        ]}'
      },
      (response) => VKMessagesGetConversationsResponse.fromMap(response),
    );
  }

  Future<VKMessagesGetHistoryResponse> getHistory(
    int offset,
    int userId, {
    int count = 12,
  }) async {
    return client.call(
      'messages.getHistory',
      {
        'offset': '$offset',
        'rev': '0',
        'count': '$count',
        'user_id': '$userId',
        'extended': '1',
      },
      (response) => VKMessagesGetHistoryResponse.fromMap(response),
    );
  }

  Future<void> send(int userId, String message, String type) async {
    if (type == 'user') {
      await client.call(
        'messages.send',
        {
          'user_id': '$userId',
          'random_id': '${Random().nextInt(4294967295)}',
          'message': message
        },
        (_) {},
      );
    } else {
      await client.call(
        'messages.send',
        {
          'peer_id': '$userId',
          'random_id': '${Random().nextInt(4294967295)}',
          'message': message
        },
        (_) {},
      );
    }
  }
}
