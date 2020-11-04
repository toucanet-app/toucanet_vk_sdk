import 'package:meta/meta.dart';

class StoriesPromoBlock {
  /// Promo story title.
  final String name;

  /// RL of square photo of the story with 50 pixels in width.
  final String photo50;

  /// RL of square photo of the story with 100 pixels in width.
  final String photo100;

  /// Hide animation for promo story.
  final bool notAnimated;

  const StoriesPromoBlock({
    @required this.name,
    @required this.photo50,
    @required this.photo100,
    @required this.notAnimated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'photo_50': photo50,
      'photo_100': photo100,
      'not_animated': notAnimated,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory StoriesPromoBlock.fromMap(Map<String, dynamic> map) {
    return StoriesPromoBlock(
      name: map['name'] as String,
      photo50: map['photo_50'] as String,
      photo100: map['photo_100'] as String,
      notAnimated: map['not_animated'] as bool,
    );
  }
}
