

class BaseStickerAnimation {
  /// Type of animation script.
  final String type;

  /// URL of animation script.
  final String url;

  const BaseStickerAnimation({
    this.type,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'url': url,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory BaseStickerAnimation.fromMap(Map<String, dynamic> map) {
    return BaseStickerAnimation(
      type: map['type'] as String,
      url: map['url'] as String,
    );
  }
}
