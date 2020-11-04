import 'package:meta/meta.dart';

class GroupsLiveCovers {
  /// Information whether live covers is enabled.
  final bool isEnabled;

  /// Information whether live covers photo scaling is enabled.
  final bool isScalable;

  final List<String> storyIds;

  const GroupsLiveCovers({
    @required this.isEnabled,
    this.isScalable,
    this.storyIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'is_enabled': isEnabled,
      'is_scalable': isScalable,
      'story_ids': storyIds,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory GroupsLiveCovers.fromMap(Map<String, dynamic> map) {
    return GroupsLiveCovers(
      isEnabled: map['is_enabled'] as bool,
      isScalable: map['is_scalable'] as bool,
      storyIds: map['story_ids'] as List<String>,
    );
  }
}
