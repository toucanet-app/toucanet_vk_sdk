

class UtilsLastShortenedLink {
  /// Access key for private stats.
  final String accessKey;

  /// Link key (characters after vk.cc/).
  final String key;

  /// Short link URL.
  final String shortUrl;

  /// Creation time in Unixtime.
  final int timestamp;

  /// Full URL.
  final String url;

  /// Total views number.
  final int views;

  const UtilsLastShortenedLink({
    this.accessKey,
    this.key,
    this.shortUrl,
    this.timestamp,
    this.url,
    this.views,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access_key': accessKey,
      'key': key,
      'short_url': shortUrl,
      'timestamp': timestamp,
      'url': url,
      'views': views,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory UtilsLastShortenedLink.fromMap(Map<String, dynamic> map) {
    return UtilsLastShortenedLink(
      accessKey: map['access_key'] as String,
      key: map['key'] as String,
      shortUrl: map['short_url'] as String,
      timestamp: map['timestamp'] as int,
      url: map['url'] as String,
      views: map['views'] as int,
    );
  }
}
