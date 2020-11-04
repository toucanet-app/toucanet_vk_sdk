import 'newsfeed_newsfeed_item_type.dart';
import 'newsfeed_item_promo_button_action.dart';
import 'newsfeed_item_promo_button_image.dart';
import 'package:meta/meta.dart';

class NewsfeedItemPromoButton {
  final NewsfeedNewsfeedItemType type;

  /// Item source ID.
  final int sourceId;

  /// Date when item has been added in Unixtime.
  final int date;

  final String text;

  final String title;

  final NewsfeedItemPromoButtonAction action;

  final List<NewsfeedItemPromoButtonImage> images;

  final String trackCode;

  const NewsfeedItemPromoButton({
    @required this.type,
    @required this.sourceId,
    @required this.date,
    this.text,
    this.title,
    this.action,
    this.images,
    this.trackCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type?.value,
      'source_id': sourceId,
      'date': date,
      'text': text,
      'title': title,
      'action': action?.toMap(),
      'images': images?.map((item) => item?.toMap()),
      'track_code': trackCode,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory NewsfeedItemPromoButton.fromMap(Map<String, dynamic> map) {
    return NewsfeedItemPromoButton(
      type: NewsfeedNewsfeedItemType(map['type']),
      sourceId: map['source_id'] as int,
      date: map['date'] as int,
      text: map['text'] as String,
      title: map['title'] as String,
      action: NewsfeedItemPromoButtonAction.fromMap(map['action']),
      images: map['images']?.map((item) => NewsfeedItemPromoButtonImage.fromMap(item)),
      trackCode: map['track_code'] as String,
    );
  }
}
