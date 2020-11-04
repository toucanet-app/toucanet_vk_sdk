import 'market_market_item_availability.dart';
import 'market_market_category.dart';
import 'market_price.dart';
import 'photos_photo.dart';
import 'base_bool_int.dart';
import 'base_likes.dart';
import 'base_reposts_info.dart';
import 'package:meta/meta.dart';

class MarketMarketItemFull {
  /// Access key for the market item.
  final String accessKey;

  final MarketMarketItemAvailability availability;

  /// Title for button for url.
  final String buttonTitle;

  final MarketMarketCategory category;

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

  final MarketPrice price;

  /// URL of the preview image.
  final String thumbPhoto;

  /// Item title.
  final String title;

  /// URL to item.
  final String url;

  final int variantsGroupingId;

  final bool isMainVariant;

  final List<int> albumsIds;

  final List<PhotosPhoto> photos;

  /// Information whether current use can comment the item.
  final BaseBoolInt canComment;

  /// Information whether current use can repost the item.
  final BaseBoolInt canRepost;

  final BaseLikes likes;

  final BaseRepostsInfo reposts;

  /// Views number.
  final int viewsCount;

  const MarketMarketItemFull({
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
  });

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
      'photos': photos?.map((item) => item?.toMap()),
      'can_comment': canComment?.value,
      'can_repost': canRepost?.value,
      'likes': likes?.toMap(),
      'reposts': reposts?.toMap(),
      'views_count': viewsCount,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory MarketMarketItemFull.fromMap(Map<String, dynamic> map) {
    return MarketMarketItemFull(
      accessKey: map['access_key'] as String,
      availability: MarketMarketItemAvailability(map['availability']),
      buttonTitle: map['button_title'] as String,
      category: MarketMarketCategory.fromMap(map['category']),
      date: map['date'] as int,
      description: map['description'] as String,
      externalId: map['external_id'] as String,
      id: map['id'] as int,
      isFavorite: map['is_favorite'] as bool,
      ownerId: map['owner_id'] as int,
      price: MarketPrice.fromMap(map['price']),
      thumbPhoto: map['thumb_photo'] as String,
      title: map['title'] as String,
      url: map['url'] as String,
      variantsGroupingId: map['variants_grouping_id'] as int,
      isMainVariant: map['is_main_variant'] as bool,
      albumsIds: map['albums_ids'] as List<int>,
      photos: map['photos']?.map((item) => PhotosPhoto.fromMap(item)),
      canComment: BaseBoolInt(map['can_comment']),
      canRepost: BaseBoolInt(map['can_repost']),
      likes: BaseLikes.fromMap(map['likes']),
      reposts: BaseRepostsInfo.fromMap(map['reposts']),
      viewsCount: map['views_count'] as int,
    );
  }
}
