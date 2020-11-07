import 'package:meta/meta.dart';

class VKMessagesGraffiti {
  /// Access key for graffiti.
  final String accessKey;

  /// Graffiti height.
  final int height;

  /// Graffiti ID.
  final int id;

  /// Graffiti owner ID.
  final int ownerId;

  /// Graffiti URL.
  final String url;

  /// Graffiti width.
  final int width;

  const VKMessagesGraffiti({
    this.accessKey,
    @required this.height,
    @required this.id,
    @required this.ownerId,
    @required this.url,
    @required this.width,
  })  : assert(height >= 0),
        assert(id >= 0),
        assert(width >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access_key': accessKey,
      'height': height,
      'id': id,
      'owner_id': ownerId,
      'url': url,
      'width': width,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesGraffiti.fromMap(Map<String, dynamic> map) {
    return VKMessagesGraffiti(
      accessKey: map['access_key'] as String,
      height: map['height'] as int,
      id: map['id'] as int,
      ownerId: map['owner_id'] as int,
      url: map['url'] as String,
      width: map['width'] as int,
    );
  }
}
