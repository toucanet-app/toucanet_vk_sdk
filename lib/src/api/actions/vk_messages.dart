import 'dart:convert';
import 'dart:math';
import 'package:meta/meta.dart';

import '../vk_client.dart';
import '../errors/vk_errors.dart';
import '../responses/vk_responses.dart';

class VKMessages {
  final VKClient client;

  const VKMessages({@required this.client}) : assert(client != null);

  Future<VKMessagesGetConversationsResponse> getConversations(
    int offset, {
    int count = 10,
  }) async {
    try {
      final result = await client.call(
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
      );

      final data = json.decode(result);

      if (data is! Map) throw Exception('Failed to parse body. \n$data.');

      if (data.containsKey('error')) {
        throw VKErrorMapper.mapErrorResponseToException(
          data['error']['error_msg'],
          data['error']['error_code'],
        );
      }

      if (data.containsKey('response')) {
        return VKMessagesGetConversationsResponse.fromMap(data['response']);
      }

      throw Exception('Invalid response format.');
    } on VKApiException catch (_) {
      rethrow;
    } on Exception catch (error) {
      throw VKErrorMapper.mapErrorResponseToException('$error');
    }
  }

  Future<VKMessagesGetHistoryResponse> getHistory(int offset, int userId,
      {int count = 12}) async {
    try {
      final result = await client.call('messages.getHistory', {
        'offset': '$offset',
        'rev': '0',
        'count': '$count',
        'user_id': '$userId',
        'extended': '1',
      });

      final data = json.decode(result);

      if (data is! Map) throw Exception('Failed to parse body. \n$data.');

      if (data.containsKey('error')) {
        throw VKErrorMapper.mapErrorResponseToException(
          data['error']['error_msg'],
          data['error']['error_code'],
        );
      }

      if (data.containsKey('response')) {
        return VKMessagesGetHistoryResponse.fromMap(data['response']);
      }

      throw Exception('Invalid response format.');
    } on VKApiException catch (_) {
      rethrow;
    } on Exception catch (error) {
      throw VKErrorMapper.mapErrorResponseToException('$error');
    }
  }

  Future<void> send(int userId, String message, String type) async {
    if (type == 'user') {
      await client.call('messages.send', {
        'user_id': '$userId',
        'random_id': '${Random().nextInt(4294967295)}',
        'message': message
      });
    } else {
      await client.call('messages.send', {
        'peer_id': '$userId',
        'random_id': '${Random().nextInt(4294967295)}',
        'message': message
      });
    }
  }
}
