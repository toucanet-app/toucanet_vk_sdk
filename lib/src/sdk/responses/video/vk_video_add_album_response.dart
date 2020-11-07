import 'package:meta/meta.dart';

class VKVideoAddAlbumResponse {
  /// Created album ID.
  final int albumId;

  const VKVideoAddAlbumResponse({
    @required this.albumId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'album_id': albumId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKVideoAddAlbumResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKVideoAddAlbumResponse(
      albumId: map['album_id'] as int,
    );
  }
}
