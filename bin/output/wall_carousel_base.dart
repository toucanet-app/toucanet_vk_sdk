

class WallCarouselBase {
  /// Index of current carousel element.
  final int carouselOffset;

  const WallCarouselBase({
    this.carouselOffset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'carousel_offset': carouselOffset,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory WallCarouselBase.fromMap(Map<String, dynamic> map) {
    return WallCarouselBase(
      carouselOffset: map['carousel_offset'] as int,
    );
  }
}
