import 'market_price.dart';
import 'market_market_item.dart';
import 'photos_photo.dart';
import 'package:meta/meta.dart';

class MarketOrderItem {
  final int ownerId;

  final int itemId;

  final MarketPrice price;

  final int quantity;

  final MarketMarketItem item;

  final String title;

  final PhotosPhoto photo;

  final List<String> variants;

  const MarketOrderItem({
    @required this.ownerId,
    @required this.itemId,
    @required this.price,
    @required this.quantity,
    @required this.item,
    this.title,
    this.photo,
    this.variants,
  });

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

  factory MarketOrderItem.fromMap(Map<String, dynamic> map) {
    return MarketOrderItem(
      ownerId: map['owner_id'] as int,
      itemId: map['item_id'] as int,
      price: MarketPrice.fromMap(map['price']),
      quantity: map['quantity'] as int,
      item: MarketMarketItem.fromMap(map['item']),
      title: map['title'] as String,
      photo: PhotosPhoto.fromMap(map['photo']),
      variants: map['variants'] as List<String>,
    );
  }
}
