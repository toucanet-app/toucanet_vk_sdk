import 'wall_post_source_type.dart';

class WallPostSource {
  /// Additional data.
  final String data;

  /// Platform name.
  final String platform;

  final WallPostSourceType type;

  /// URL to an external site used to publish the post.
  final String url;

  const WallPostSource({
    this.data,
    this.platform,
    this.type,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data,
      'platform': platform,
      'type': type?.value,
      'url': url,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory WallPostSource.fromMap(Map<String, dynamic> map) {
    return WallPostSource(
      data: map['data'] as String,
      platform: map['platform'] as String,
      type: WallPostSourceType(map['type']),
      url: map['url'] as String,
    );
  }
}
