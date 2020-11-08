import 'dart:convert';
import 'dart:math';

import '../../base/transport_client.dart';

import '../responses/vk_responses.dart';
import '../errors/vk_error_mapper.dart';
import '../errors/exceptions/vk_exceptions.dart';

import 'vk_auth.dart';

class VKMessages {
  final TransportClient transportClient;
  final VKAuth auth;

  const VKMessages(this.transportClient, this.auth)
      : assert(transportClient != null);

  Future<VKMessagesGetConversationsResponse> getConversations(
    int offset, {
    int count = 10,
  }) async {
    try {
      final result = await transportClient.post(
        'https://api.vk.com/method/messages.getConversations',
        {
          'access_token': auth.token,
          'v': '${auth.version}',
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
      final data = json.decode(result.body);

      if (data is! Map) throw Exception('Failed to parse body. \n$data.');

      if (data.containsKey('error')) {
        throw ErrorMapper.mapErrorResponseToException(
          data['error']['error_code'],
          data['error']['error_msg'],
        );
      }
      if (data.containsKey('response')) {
        return VKMessagesGetConversationsResponse.fromMap(data['response']);
      }

      throw Exception('Invalid response format.');
    } on VKApiException catch (_) {
      rethrow;
    } on Exception catch (error) {
      throw ErrorMapper.mapErrorResponseToException(1, '$error');
    }
  }

  Future<VKMessagesGetHistoryResponse> getHistory(int offset, int userId,
      {int count = 12}) async {
    try {
      final result = await transportClient
          .post('https://api.vk.com/method/messages.getHistory', {
        'access_token': auth.token,
        'v': '${auth.version}',
        'offset': '$offset',
        'rev': '0',
        'count': '$count',
        'user_id': '$userId',
        'extended': '1',
      });

      final data = json.decode(result.body);

      if (data is! Map) throw Exception('Failed to parse body. \n$data.');

      if (data.containsKey('error')) {
        throw ErrorMapper.mapErrorResponseToException(
          data['error']['error_code'],
          data['error']['error_msg'],
        );
      }

      if (data.containsKey('response')) {
        return VKMessagesGetHistoryResponse.fromMap(data['response']);
      }

      throw Exception('Invalid response format.');
    } on VKApiException catch (_) {
      rethrow;
    } on Exception catch (error) {
      throw ErrorMapper.mapErrorResponseToException(1, '$error');
    }
  }

  Future<void> send(int userId, String message, String type) async {
    if (type == 'user') {
      await transportClient.post('https://api.vk.com/method/messages.send', {
        'access_token': auth.token,
        'v': '${auth.version}',
        'user_id': '$userId',
        'random_id': '${Random().nextInt(4294967295)}',
        'message': message
      });
    } else {
      await transportClient.post('https://api.vk.com/method/messages.send', {
        'access_token': auth.token,
        'v': '${auth.version}',
        'peer_id': '$userId',
        'random_id': '${Random().nextInt(4294967295)}',
        'message': message
      });
    }
  }
}
