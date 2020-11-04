import 'base_link_application.dart';
import 'base_link_button.dart';
import 'photos_photo.dart';
import 'base_link_product.dart';
import 'base_link_rating.dart';
import 'link_target_object.dart';
import 'video_video.dart';
import 'package:meta/meta.dart';

class BaseLink {
  final BaseLinkApplication application;

  final BaseLinkButton button;

  /// Link caption.
  final String caption;

  /// Link description.
  final String description;

  /// Link ID.
  final String id;

  final bool isFavorite;

  final PhotosPhoto photo;

  /// String ID of the page with article preview.
  final String previewPage;

  /// URL of the page with article preview.
  final String previewUrl;

  final BaseLinkProduct product;

  final BaseLinkRating rating;

  /// Link title.
  final String title;

  /// Link URL.
  final String url;

  final LinkTargetObject targetObject;

  /// Information whether the current link is external.
  final bool isExternal;

  /// Video from link.
  final VideoVideo video;

  const BaseLink({
    this.application,
    this.button,
    this.caption,
    this.description,
    this.id,
    this.isFavorite,
    this.photo,
    this.previewPage,
    this.previewUrl,
    this.product,
    this.rating,
    this.title,
    @required this.url,
    this.targetObject,
    this.isExternal,
    this.video,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'application': application?.toMap(),
      'button': button?.toMap(),
      'caption': caption,
      'description': description,
      'id': id,
      'is_favorite': isFavorite,
      'photo': photo?.toMap(),
      'preview_page': previewPage,
      'preview_url': previewUrl,
      'product': product?.toMap(),
      'rating': rating?.toMap(),
      'title': title,
      'url': url,
      'target_object': targetObject?.toMap(),
      'is_external': isExternal,
      'video': video?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory BaseLink.fromMap(Map<String, dynamic> map) {
    return BaseLink(
      application: BaseLinkApplication.fromMap(map['application']),
      button: BaseLinkButton.fromMap(map['button']),
      caption: map['caption'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      isFavorite: map['is_favorite'] as bool,
      photo: PhotosPhoto.fromMap(map['photo']),
      previewPage: map['preview_page'] as String,
      previewUrl: map['preview_url'] as String,
      product: BaseLinkProduct.fromMap(map['product']),
      rating: BaseLinkRating.fromMap(map['rating']),
      title: map['title'] as String,
      url: map['url'] as String,
      targetObject: LinkTargetObject.fromMap(map['target_object']),
      isExternal: map['is_external'] as bool,
      video: VideoVideo.fromMap(map['video']),
    );
  }
}
