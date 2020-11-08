class VKBaseLinkRating {
  /// Count of reviews.
  final int reviewsCount;

  /// Count of stars.
  final double stars;

  const VKBaseLinkRating({
    this.reviewsCount,
    this.stars,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reviews_count': reviewsCount,
      'stars': stars,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBaseLinkRating.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKBaseLinkRating(
      reviewsCount: map['reviews_count'] as int,
      stars: map['stars'] as double,
    );
  }
}
