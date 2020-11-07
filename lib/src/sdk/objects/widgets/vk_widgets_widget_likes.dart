class VKWidgetsWidgetLikes {
  /// Likes number.
  final int count;

  const VKWidgetsWidgetLikes({
    this.count,
  }) : assert(count == null || count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKWidgetsWidgetLikes.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKWidgetsWidgetLikes(
      count: map['count'] as int,
    );
  }
}
