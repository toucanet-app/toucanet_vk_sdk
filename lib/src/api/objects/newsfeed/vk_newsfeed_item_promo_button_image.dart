class VKNewsfeedItemPromoButtonImage {
  final int width;

  final int height;

  final String url;

  const VKNewsfeedItemPromoButtonImage({
    this.width,
    this.height,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'width': width,
      'height': height,
      'url': url,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNewsfeedItemPromoButtonImage.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKNewsfeedItemPromoButtonImage(
      width: map['width'] as int,
      height: map['height'] as int,
      url: map['url'] as String,
    );
  }
}
