class VKBaseStickerAnimation {
  /// Type of animation script.
  final String type;

  /// URL of animation script.
  final String url;

  const VKBaseStickerAnimation({
    this.type,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'url': url,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBaseStickerAnimation.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKBaseStickerAnimation(
      type: map['type'] as String,
      url: map['url'] as String,
    );
  }
}
