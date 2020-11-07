class VKUtilsGetShortLinkResponse {
  /// Access key for private stats.
  final String accessKey;

  /// Link key (characters after vk.cc/).
  final String key;

  /// Short link URL.
  final String shortUrl;

  /// Full URL.
  final String url;

  const VKUtilsGetShortLinkResponse({
    this.accessKey,
    this.key,
    this.shortUrl,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access_key': accessKey,
      'key': key,
      'short_url': shortUrl,
      'url': url,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKUtilsGetShortLinkResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKUtilsGetShortLinkResponse(
      accessKey: map['access_key'] as String,
      key: map['key'] as String,
      shortUrl: map['short_url'] as String,
      url: map['url'] as String,
    );
  }
}
