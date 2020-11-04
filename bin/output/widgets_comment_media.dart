import 'widgets_comment_media_type.dart';

class WidgetsCommentMedia {
  /// Media item ID.
  final int itemId;

  /// Media owner's ID.
  final int ownerId;

  /// URL of the preview image (type=photo only).
  final String thumbSrc;

  final WidgetsCommentMediaType type;

  const WidgetsCommentMedia({
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

  factory WidgetsCommentMedia.fromMap(Map<String, dynamic> map) {
    return WidgetsCommentMedia(
      itemId: map['item_id'] as int,
      ownerId: map['owner_id'] as int,
      thumbSrc: map['thumb_src'] as String,
      type: WidgetsCommentMediaType(map['type']),
    );
  }
}
