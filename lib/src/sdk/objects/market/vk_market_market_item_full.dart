import 'package:meta/meta.dart';

import '../base/vk_base_bool_int.dart';
import '../base/vk_base_likes.dart';
import '../base/vk_base_reposts_info.dart';
import '../photos/vk_photos_photo.dart';
import 'vk_market_market_category.dart';
import 'vk_market_market_item_availability.dart';
import 'vk_market_price.dart';

class VKMarketMarketItemFull {
  /// Access key for the market item.
  final String accessKey;

  final VKMarketMarketItemAvailability availability;

  /// Title for button for url.
  final String buttonTitle;

  final VKMarketMarketCategory category;

  /// Date when the item has been created in Unixtime.
  final int date;

  /// Item description.
  final String description;

  final String externalId;

  /// Item ID.
  final int id;

  final bool isFavorite;

  /// Item owner's ID.
  final int ownerId;

  final VKMarketPrice price;

  /// URL of the preview image.
  final String thumbPhoto;

  /// Item title.
  final String title;

  /// URL to item.
  final String url;

  final int variantsGroupingId;

  final bool isMainVariant;

  final List<int> albumsIds;

  final List<VKPhotosPhoto> photos;

  /// Information whether current use can comment the item.
  final VKBaseBoolInt canComment;

  /// Information whether current use can repost the item.
  final VKBaseBoolInt canRepost;

  final VKBaseLikes likes;

  final VKBaseRepostsInfo reposts;

  /// Views number.
  final int viewsCount;

  const VKMarketMarketItemFull({
    this.accessKey,
    @required this.availability,
    this.buttonTitle,
    @required this.category,
    this.date,
    @required this.description,
    this.externalId,
    @required this.id,
    this.isFavorite,
    @required this.ownerId,
    @required this.price,
    @required this.thumbPhoto,
    @required this.title,
    this.url,
    this.variantsGroupingId,
    this.isMainVariant,
    this.albumsIds,
    this.photos,
    this.canComment,
    this.canRepost,
    this.likes,
    this.reposts,
    this.viewsCount,
  })  : assert(date == null || date >= 0),
        assert(id >= 0),
        assert(variantsGroupingId == null || variantsGroupingId >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access_key': accessKey,
      'availability': availability?.value,
      'button_title': buttonTitle,
      'category': category?.toMap(),
      'date': date,
      'description': description,
      'external_id': externalId,
      'id': id,
      'is_favorite': isFavorite,
      'owner_id': ownerId,
      'price': price?.toMap(),
      'thumb_photo': thumbPhoto,
      'title': title,
      'url': url,
      'variants_grouping_id': variantsGroupingId,
      'is_main_variant': isMainVariant,
      'albums_ids': albumsIds,
      'photos': photos
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'can_comment': canComment?.value,
      'can_repost': canRepost?.value,
      'likes': likes?.toMap(),
      'reposts': reposts?.toMap(),
      'views_count': viewsCount,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMarketMarketItemFull.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMarketMarketItemFull(
      accessKey: map['access_key'] as String,
      availability: VKMarketMarketItemAvailability(map['availability']),
      buttonTitle: map['button_title'] as String,
      category: VKMarketMarketCategory.fromMap(map['category']),
      date: map['date'] as int,
      description: map['description'] as String,
      externalId: map['external_id'] as String,
      id: map['id'] as int,
      isFavorite: map['is_favorite'] as bool,
      ownerId: map['owner_id'] as int,
      price: VKMarketPrice.fromMap(map['price']),
      thumbPhoto: map['thumb_photo'] as String,
      title: map['title'] as String,
      url: map['url'] as String,
      variantsGroupingId: map['variants_grouping_id'] as int,
      isMainVariant: map['is_main_variant'] as bool,
      albumsIds: map['albums_ids'] as List<int>,
      photos: map['photos']
          ?.map<VKPhotosPhoto>(
            (item) => VKPhotosPhoto.fromMap(item),
          )
          ?.toList(),
      canComment: VKBaseBoolInt(map['can_comment']),
      canRepost: VKBaseBoolInt(map['can_repost']),
      likes: VKBaseLikes.fromMap(map['likes']),
      reposts: VKBaseRepostsInfo.fromMap(map['reposts']),
      viewsCount: map['views_count'] as int,
    );
  }
}
