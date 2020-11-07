import 'package:meta/meta.dart';

import 'vk_stories_clickable_sticker.dart';

class VKStoriesClickableStickers {
  final List<VKStoriesClickableSticker> clickableStickers;

  final int originalHeight;

  final int originalWidth;

  const VKStoriesClickableStickers({
    @required this.clickableStickers,
    @required this.originalHeight,
    @required this.originalWidth,
  })  : assert(originalHeight >= 0),
        assert(originalWidth >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clickable_stickers': clickableStickers
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'original_height': originalHeight,
      'original_width': originalWidth,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStoriesClickableStickers.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKStoriesClickableStickers(
      clickableStickers: map['clickable_stickers']
          ?.map<VKStoriesClickableSticker>(
            (item) => VKStoriesClickableSticker.fromMap(item),
          )
          ?.toList(),
      originalHeight: map['original_height'] as int,
      originalWidth: map['original_width'] as int,
    );
  }
}
