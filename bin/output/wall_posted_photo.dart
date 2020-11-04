class WallPostedPhoto {
  /// Photo ID.
  final int id;

  /// Photo owner's ID.
  final int ownerId;

  /// URL of the preview image with 130 px in width.
  final String photo130;

  /// URL of the preview image with 604 px in width.
  final String photo604;

  const WallPostedPhoto({
    this.id,
    this.ownerId,
    this.photo130,
    this.photo604,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'owner_id': ownerId,
      'photo_130': photo130,
      'photo_604': photo604,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory WallPostedPhoto.fromMap(Map<String, dynamic> map) {
    return WallPostedPhoto(
      id: map['id'] as int,
      ownerId: map['owner_id'] as int,
      photo130: map['photo_130'] as String,
      photo604: map['photo_604'] as String,
    );
  }
}
