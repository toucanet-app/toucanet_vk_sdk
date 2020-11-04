class BaseLinkRating {
  /// Count of reviews.
  final int reviewsCount;

  /// Count of stars.
  final double stars;

  const BaseLinkRating({
    this.reviewsCount,
    this.stars,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reviews_count': reviewsCount,
      'stars': stars,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory BaseLinkRating.fromMap(Map<String, dynamic> map) {
    return BaseLinkRating(
      reviewsCount: map['reviews_count'] as int,
      stars: map['stars'] as double,
    );
  }
}
