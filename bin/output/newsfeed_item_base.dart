import 'newsfeed_newsfeed_item_type.dart';
import 'package:meta/meta.dart';

class NewsfeedItemBase {
  final NewsfeedNewsfeedItemType type;

  /// Item source ID.
  final int sourceId;

  /// Date when item has been added in Unixtime.
  final int date;

  const NewsfeedItemBase({
    @required this.type,
    @required this.sourceId,
    @required this.date,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type?.value,
      'source_id': sourceId,
      'date': date,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory NewsfeedItemBase.fromMap(Map<String, dynamic> map) {
    return NewsfeedItemBase(
      type: NewsfeedNewsfeedItemType(map['type']),
      sourceId: map['source_id'] as int,
      date: map['date'] as int,
    );
  }
}
