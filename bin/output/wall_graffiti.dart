class WallGraffiti {
  /// Graffiti ID.
  final int id;

  /// Graffiti owner's ID.
  final int ownerId;

  /// URL of the preview image with 200 px in width.
  final String photo200;

  /// URL of the preview image with 586 px in width.
  final String photo586;

  const WallGraffiti({
    this.id,
    this.ownerId,
    this.photo200,
    this.photo586,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'owner_id': ownerId,
      'photo_200': photo200,
      'photo_586': photo586,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory WallGraffiti.fromMap(Map<String, dynamic> map) {
    return WallGraffiti(
      id: map['id'] as int,
      ownerId: map['owner_id'] as int,
      photo200: map['photo_200'] as String,
      photo586: map['photo_586'] as String,
    );
  }
}
