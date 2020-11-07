import 'package:meta/meta.dart';

class VKGroupsCallbackServer {
  final int id;

  final String title;

  final int creatorId;

  final String url;

  final String secretKey;

  final String status;

  const VKGroupsCallbackServer({
    @required this.id,
    @required this.title,
    @required this.creatorId,
    @required this.url,
    @required this.secretKey,
    @required this.status,
  })  : assert(id >= 0),
        assert(creatorId >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'creator_id': creatorId,
      'url': url,
      'secret_key': secretKey,
      'status': status,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsCallbackServer.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKGroupsCallbackServer(
      id: map['id'] as int,
      title: map['title'] as String,
      creatorId: map['creator_id'] as int,
      url: map['url'] as String,
      secretKey: map['secret_key'] as String,
      status: map['status'] as String,
    );
  }
}
