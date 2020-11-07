import 'package:meta/meta.dart';

import '../photos/vk_photos_photo.dart';
import 'vk_market_market_item.dart';
import 'vk_market_price.dart';

class VKMarketOrderItem {
  final int ownerId;

  final int itemId;

  final VKMarketPrice price;

  final int quantity;

  final VKMarketMarketItem item;

  final String title;

  final VKPhotosPhoto photo;

  final List<String> variants;

  const VKMarketOrderItem({
    @required this.ownerId,
    @required this.itemId,
    @required this.price,
    @required this.quantity,
    @required this.item,
    this.title,
    this.photo,
    this.variants,
  }) : assert(quantity >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'owner_id': ownerId,
      'item_id': itemId,
      'price': price?.toMap(),
      'quantity': quantity,
      'item': item?.toMap(),
      'title': title,
      'photo': photo?.toMap(),
      'variants': variants,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMarketOrderItem.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMarketOrderItem(
      ownerId: map['owner_id'] as int,
      itemId: map['item_id'] as int,
      price: VKMarketPrice.fromMap(map['price']),
      quantity: map['quantity'] as int,
      item: VKMarketMarketItem.fromMap(map['item']),
      title: map['title'] as String,
      photo: VKPhotosPhoto.fromMap(map['photo']),
      variants: map['variants'] as List<String>,
    );
  }
}
