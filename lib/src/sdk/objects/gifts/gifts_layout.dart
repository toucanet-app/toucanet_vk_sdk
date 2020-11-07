class VKGiftsLayout {
  /// Gift ID.
  final int id;

  /// URL of the preview image with 512 px in width.
  final String thumb512;

  /// URL of the preview image with 256 px in width.
  final String thumb256;

  /// URL of the preview image with 48 px in width.
  final String thumb48;

  /// URL of the preview image with 96 px in width.
  final String thumb96;

  /// ID of the sticker pack, if the gift is representing one.
  final int stickersProductId;

  /// ID of the build of constructor gift.
  final String buildId;

  /// Keywords used for search.
  final String keywords;

  const VKGiftsLayout({
    this.id,
    this.thumb512,
    this.thumb256,
    this.thumb48,
    this.thumb96,
    this.stickersProductId,
    this.buildId,
    this.keywords,
  }) : assert(stickersProductId >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'thumb_512': thumb512,
      'thumb_256': thumb256,
      'thumb_48': thumb48,
      'thumb_96': thumb96,
      'stickers_product_id': stickersProductId,
      'build_id': buildId,
      'keywords': keywords,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGiftsLayout.fromMap(Map<String, dynamic> map) {
    return VKGiftsLayout(
      id: map['id'] as int,
      thumb512: map['thumb_512'] as String,
      thumb256: map['thumb_256'] as String,
      thumb48: map['thumb_48'] as String,
      thumb96: map['thumb_96'] as String,
      stickersProductId: map['stickers_product_id'] as int,
      buildId: map['build_id'] as String,
      keywords: map['keywords'] as String,
    );
  }
}
