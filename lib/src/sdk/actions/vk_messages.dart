import 'dart:convert';
import 'dart:math';

import 'package:toucanet_vk_sdk/src/sdk/errors/vk_error_mapper.dart';

import '../../base/transport_client.dart';
import 'vk_auth.dart';

class VKMessages {
  final TransportClient transportClient;
  final VKAuth auth;

  const VKMessages(this.transportClient, this.auth)
      : assert(transportClient != null);

  Future<TransportClientResponse> getConversations(int offset,
      {int count = 10}) async {
    final result = await transportClient
        .post('https://api.vk.com/method/messages.getConversations', {
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
    });
    final decode = jsonDecode(result.body);
    if (decode is! Map) {
      throw Exception('is Map error');
    }
    if ((decode as Map).containsKey('error')) {
      throw ErrorMapper.mapErrorResponseToException(
        decode['error']['error_code'],
        decode['error']['error_msg'],
      );
    }
    return result;
  }

  Future<TransportClientResponse> getHistory(int offset, int userId,
      {int count = 12}) async {
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
    return result;
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
