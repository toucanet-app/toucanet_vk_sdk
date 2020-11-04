import 'stories_clickable_sticker.dart';
import 'package:meta/meta.dart';

class StoriesClickableStickers {
  final List<StoriesClickableSticker> clickableStickers;

  final int originalHeight;

  final int originalWidth;

  const StoriesClickableStickers({
    @required this.clickableStickers,
    @required this.originalHeight,
    @required this.originalWidth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clickable_stickers': clickableStickers?.map((item) => item?.toMap()),
      'original_height': originalHeight,
      'original_width': originalWidth,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory StoriesClickableStickers.fromMap(Map<String, dynamic> map) {
    return StoriesClickableStickers(
      clickableStickers: map['clickable_stickers']?.map((item) => StoriesClickableSticker.fromMap(item)),
      originalHeight: map['original_height'] as int,
      originalWidth: map['original_width'] as int,
    );
  }
}
