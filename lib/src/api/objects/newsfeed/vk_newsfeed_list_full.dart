import 'package:meta/meta.dart';

import '../base/vk_base_bool_int.dart';

class VKNewsfeedListFull {
  /// List ID.
  final int id;

  /// List title.
  final String title;

  /// Information whether reposts hiding is enabled.
  final VKBaseBoolInt noReposts;

  /// The list of Users and communities IDs.
  final List<int> sourceIds;

  const VKNewsfeedListFull({
    @required this.id,
    @required this.title,
    this.noReposts,
    this.sourceIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'no_reposts': noReposts?.value,
      'source_ids': sourceIds,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNewsfeedListFull.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKNewsfeedListFull(
      id: map['id'] as int,
      title: map['title'] as String,
      noReposts: VKBaseBoolInt(map['no_reposts']),
      sourceIds: map['source_ids'] as List<int>,
    );
  }
}
