import 'package:meta/meta.dart';

import '../link/link_target_object.dart';
import '../photos/photos_photo.dart';
import '../video/video_video.dart';
import 'base_link_application.dart';
import 'base_link_button.dart';
import 'base_link_product.dart';
import 'base_link_rating.dart';

class VKBaseLink {
  final VKBaseLinkApplication application;

  final VKBaseLinkButton button;

  /// Link caption.
  final String caption;

  /// Link description.
  final String description;

  /// Link ID.
  final String id;

  final bool isFavorite;

  final VKPhotosPhoto photo;

  /// String ID of the page with article preview.
  final String previewPage;

  /// URL of the page with article preview.
  final String previewUrl;

  final VKBaseLinkProduct product;

  final VKBaseLinkRating rating;

  /// Link title.
  final String title;

  /// Link URL.
  final String url;

  final VKLinkTargetObject targetObject;

  /// Information whether the current link is external.
  final bool isExternal;

  /// Video from link.
  final VKVideoVideo video;

  const VKBaseLink({
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

  factory VKBaseLink.fromMap(Map<String, dynamic> map) {
    return VKBaseLink(
      application: VKBaseLinkApplication.fromMap(map['application']),
      button: VKBaseLinkButton.fromMap(map['button']),
      caption: map['caption'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      isFavorite: map['is_favorite'] as bool,
      photo: VKPhotosPhoto.fromMap(map['photo']),
      previewPage: map['preview_page'] as String,
      previewUrl: map['preview_url'] as String,
      product: VKBaseLinkProduct.fromMap(map['product']),
      rating: VKBaseLinkRating.fromMap(map['rating']),
      title: map['title'] as String,
      url: map['url'] as String,
      targetObject: VKLinkTargetObject.fromMap(map['target_object']),
      isExternal: map['is_external'] as bool,
      video: VKVideoVideo.fromMap(map['video']),
    );
  }
}
