import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKNotesGetResponse {
  /// Total number.
  final int count;

  final List<VKNotesNote> items;

  const VKNotesGetResponse({
    @required this.count,
    @required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNotesGetResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKNotesGetResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKNotesNote>(
            (item) => VKNotesNote.fromMap(item),
          )
          ?.toList(),
    );
  }
}
