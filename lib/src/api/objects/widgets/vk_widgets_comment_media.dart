import 'vk_widgets_comment_media_type.dart';

class VKWidgetsCommentMedia {
  /// Media item ID.
  final int itemId;

  /// Media owner's ID.
  final int ownerId;

  /// URL of the preview image (type=photo only).
  final String thumbSrc;

  final VKWidgetsCommentMediaType type;

  const VKWidgetsCommentMedia({
    this.itemId,
    this.ownerId,
    this.thumbSrc,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'item_id': itemId,
      'owner_id': ownerId,
      'thumb_src': thumbSrc,
      'type': type?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKWidgetsCommentMedia.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKWidgetsCommentMedia(
      itemId: map['item_id'] as int,
      ownerId: map['owner_id'] as int,
      thumbSrc: map['thumb_src'] as String,
      type: VKWidgetsCommentMediaType(map['type']),
    );
  }
}
