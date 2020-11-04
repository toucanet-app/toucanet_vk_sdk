class WallAppPost {
  /// Application ID.
  final int id;

  /// Application name.
  final String name;

  /// URL of the preview image with 130 px in width.
  final String photo130;

  /// URL of the preview image with 604 px in width.
  final String photo604;

  const WallAppPost({
    this.id,
    this.name,
    this.photo130,
    this.photo604,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'photo_130': photo130,
      'photo_604': photo604,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory WallAppPost.fromMap(Map<String, dynamic> map) {
    return WallAppPost(
      id: map['id'] as int,
      name: map['name'] as String,
      photo130: map['photo_130'] as String,
      photo604: map['photo_604'] as String,
    );
  }
}
