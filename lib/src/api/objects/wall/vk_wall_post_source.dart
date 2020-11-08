import 'vk_wall_post_source_type.dart';

class VKWallPostSource {
  /// Additional data.
  final String data;

  /// Platform name.
  final String platform;

  final VKWallPostSourceType type;

  /// URL to an external site used to publish the post.
  final String url;

  const VKWallPostSource({
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

  factory VKWallPostSource.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKWallPostSource(
      data: map['data'] as String,
      platform: map['platform'] as String,
      type: VKWallPostSourceType(map['type']),
      url: map['url'] as String,
    );
  }
}
