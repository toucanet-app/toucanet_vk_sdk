import 'package:meta/meta.dart';

class VKMessagesMessageActionPhoto {
  /// URL of the preview image with 100px in width.
  final String photo100;

  /// URL of the preview image with 200px in width.
  final String photo200;

  /// URL of the preview image with 50px in width.
  final String photo50;

  const VKMessagesMessageActionPhoto({
    @required this.photo100,
    @required this.photo200,
    @required this.photo50,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'photo_100': photo100,
      'photo_200': photo200,
      'photo_50': photo50,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesMessageActionPhoto.fromMap(Map<String, dynamic> map) {
    return VKMessagesMessageActionPhoto(
      photo100: map['photo_100'] as String,
      photo200: map['photo_200'] as String,
      photo50: map['photo_50'] as String,
    );
  }
}
