import 'base_image.dart';
import 'base_sticker_animation.dart';

class VKBaseSticker {
  /// Sticker ID.
  final int stickerId;

  /// Pack ID.
  final int productId;

  final List<VKBaseImage> images;

  final List<VKBaseImage> imagesWithBackground;

  /// URL of sticker animation script.
  final String animationUrl;

  /// Array of sticker animation script objects.
  final List<VKBaseStickerAnimation> animations;

  /// Information whether the sticker is allowed.
  final bool isAllowed;

  const VKBaseSticker({
    this.stickerId,
    this.productId,
    this.images,
    this.imagesWithBackground,
    this.animationUrl,
    this.animations,
    this.isAllowed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sticker_id': stickerId,
      'product_id': productId,
      'images': images?.map((item) => item?.toMap()),
      'images_with_background':
          imagesWithBackground?.map((item) => item?.toMap()),
      'animation_url': animationUrl,
      'animations': animations?.map((item) => item?.toMap()),
      'is_allowed': isAllowed,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBaseSticker.fromMap(Map<String, dynamic> map) {
    return VKBaseSticker(
      stickerId: map['sticker_id'] as int,
      productId: map['product_id'] as int,
      images: map['images']?.map((item) => VKBaseImage.fromMap(item)),
      imagesWithBackground: map['images_with_background']
          ?.map((item) => VKBaseImage.fromMap(item)),
      animationUrl: map['animation_url'] as String,
      animations: map['animations']
          ?.map((item) => VKBaseStickerAnimation.fromMap(item)),
      isAllowed: map['is_allowed'] as bool,
    );
  }
}
