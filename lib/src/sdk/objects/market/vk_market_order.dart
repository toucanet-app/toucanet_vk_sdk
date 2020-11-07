import 'package:meta/meta.dart';

import 'vk_market_order_item.dart';
import 'vk_market_price.dart';

class VKMarketOrder {
  final int id;

  final int groupId;

  final int userId;

  final String displayOrderId;

  final int date;

  final int status;

  final int itemsCount;

  final String trackNumber;

  final String trackLink;

  final String comment;

  final String address;

  final String merchantComment;

  final int weight;

  final List<dynamic> tags;

  final dynamic dimensions;

  final VKMarketPrice totalPrice;

  /// Several order items for preview.
  final List<VKMarketOrderItem> previewOrderItems;

  final dynamic delivery;

  final dynamic recipient;

  final List<dynamic> priceDetails;

  const VKMarketOrder({
    @required this.id,
    @required this.groupId,
    @required this.userId,
    this.displayOrderId,
    @required this.date,
    @required this.status,
    @required this.itemsCount,
    this.trackNumber,
    this.trackLink,
    this.comment,
    this.address,
    this.merchantComment,
    this.weight,
    this.tags,
    this.dimensions,
    @required this.totalPrice,
    this.previewOrderItems,
    this.delivery,
    this.recipient,
    this.priceDetails,
  })  : assert(id >= 0),
        assert(groupId >= 0),
        assert(userId >= 0),
        assert(date >= 0),
        assert(status >= 0),
        assert(itemsCount >= 0),
        assert(weight == null || weight >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'group_id': groupId,
      'user_id': userId,
      'display_order_id': displayOrderId,
      'date': date,
      'status': status,
      'items_count': itemsCount,
      'track_number': trackNumber,
      'track_link': trackLink,
      'comment': comment,
      'address': address,
      'merchant_comment': merchantComment,
      'weight': weight,
      'tags': tags,
      'dimensions': dimensions,
      'total_price': totalPrice?.toMap(),
      'preview_order_items':
          previewOrderItems?.map((item) => item?.toMap())?.toList(),
      'delivery': delivery,
      'recipient': recipient,
      'price_details': priceDetails,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMarketOrder.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMarketOrder(
      id: map['id'] as int,
      groupId: map['group_id'] as int,
      userId: map['user_id'] as int,
      displayOrderId: map['display_order_id'] as String,
      date: map['date'] as int,
      status: map['status'] as int,
      itemsCount: map['items_count'] as int,
      trackNumber: map['track_number'] as String,
      trackLink: map['track_link'] as String,
      comment: map['comment'] as String,
      address: map['address'] as String,
      merchantComment: map['merchant_comment'] as String,
      weight: map['weight'] as int,
      tags: map['tags'] as List<dynamic>,
      dimensions: map['dimensions'] as dynamic,
      totalPrice: VKMarketPrice.fromMap(map['total_price']),
      previewOrderItems: map['preview_order_items']
          ?.map((item) => VKMarketOrderItem.fromMap(item))
          ?.toList(),
      delivery: map['delivery'] as dynamic,
      recipient: map['recipient'] as dynamic,
      priceDetails: map['price_details'] as List<dynamic>,
    );
  }
}
