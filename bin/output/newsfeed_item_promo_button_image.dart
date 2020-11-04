

class NewsfeedItemPromoButtonImage {
  final int width;

  final int height;

  final String url;

  const NewsfeedItemPromoButtonImage({
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

  factory NewsfeedItemPromoButtonImage.fromMap(Map<String, dynamic> map) {
    return NewsfeedItemPromoButtonImage(
      width: map['width'] as int,
      height: map['height'] as int,
      url: map['url'] as String,
    );
  }
}
