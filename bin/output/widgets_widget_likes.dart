

class WidgetsWidgetLikes {
  /// Likes number.
  final int count;

  const WidgetsWidgetLikes({
    this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory WidgetsWidgetLikes.fromMap(Map<String, dynamic> map) {
    return WidgetsWidgetLikes(
      count: map['count'] as int,
    );
  }
}
