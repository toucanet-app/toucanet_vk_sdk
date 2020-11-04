class StatsActivity {
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

  const StatsActivity({
    this.comments,
    this.copies,
    this.hidden,
    this.likes,
    this.subscribed,
    this.unsubscribed,
  });

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

  factory StatsActivity.fromMap(Map<String, dynamic> map) {
    return StatsActivity(
      comments: map['comments'] as int,
      copies: map['copies'] as int,
      hidden: map['hidden'] as int,
      likes: map['likes'] as int,
      subscribed: map['subscribed'] as int,
      unsubscribed: map['unsubscribed'] as int,
    );
  }
}
