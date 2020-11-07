class VKStatsActivity {
  /// Comments number.
  final int comments;

  /// Reposts number.
  final int copies;

  /// Hidden from news count.
  final int hidden;

  /// Likes number.
  final int likes;

  /// New subscribers count.
  final int subscribed;

  /// Unsubscribed count.
  final int unsubscribed;

  const VKStatsActivity({
    this.comments,
    this.copies,
    this.hidden,
    this.likes,
    this.subscribed,
    this.unsubscribed,
  })  : assert(comments == null || comments >= 0),
        assert(copies == null || copies >= 0),
        assert(hidden == null || hidden >= 0),
        assert(likes == null || likes >= 0),
        assert(subscribed == null || subscribed >= 0),
        assert(unsubscribed == null || unsubscribed >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comments': comments,
      'copies': copies,
      'hidden': hidden,
      'likes': likes,
      'subscribed': subscribed,
      'unsubscribed': unsubscribed,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStatsActivity.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKStatsActivity(
      comments: map['comments'] as int,
      copies: map['copies'] as int,
      hidden: map['hidden'] as int,
      likes: map['likes'] as int,
      subscribed: map['subscribed'] as int,
      unsubscribed: map['unsubscribed'] as int,
    );
  }
}
