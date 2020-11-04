import 'base_bool_int.dart';
import 'package:meta/meta.dart';

class NewsfeedListFull {
  /// List ID.
  final int id;

  /// List title.
  final String title;

  /// Information whether reposts hiding is enabled.
  final BaseBoolInt noReposts;

  /// The list of Users and communities IDs.
  final List<int> sourceIds;

  const NewsfeedListFull({
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

  factory NewsfeedListFull.fromMap(Map<String, dynamic> map) {
    return NewsfeedListFull(
      id: map['id'] as int,
      title: map['title'] as String,
      noReposts: BaseBoolInt(map['no_reposts']),
      sourceIds: map['source_ids'] as List<int>,
    );
  }
}
