import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKNotesGetCommentsResponse {
  /// Total number.
  final int count;

  final List<VKNotesNoteComment> items;

  const VKNotesGetCommentsResponse({
    @required this.count,
    @required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNotesGetCommentsResponse.fromMap(Map<String, dynamic> map) {
    return VKNotesGetCommentsResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKNotesNoteComment.fromMap(item)),
    );
  }
}
