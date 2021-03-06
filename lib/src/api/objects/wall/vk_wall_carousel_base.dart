class VKWallCarouselBase {
  /// Index of current carousel element.
  final int carouselOffset;

  const VKWallCarouselBase({
    this.carouselOffset,
  }) : assert(carouselOffset == null || carouselOffset >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'carousel_offset': carouselOffset,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKWallCarouselBase.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKWallCarouselBase(
      carouselOffset: map['carousel_offset'] as int,
    );
  }
}
