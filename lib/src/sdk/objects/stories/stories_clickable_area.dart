class VKStoriesClickableArea {
  final int x;

  final int y;

  const VKStoriesClickableArea({
    this.x,
    this.y,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x': x,
      'y': y,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStoriesClickableArea.fromMap(Map<String, dynamic> map) {
    return VKStoriesClickableArea(
      x: map['x'] as int,
      y: map['y'] as int,
    );
  }
}
