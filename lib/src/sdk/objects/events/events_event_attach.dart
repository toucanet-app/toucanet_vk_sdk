import 'package:meta/meta.dart';

import '../groups/groups_group_full_member_status.dart';

class VKEventsEventAttach {
  /// address of event.
  final String address;

  /// text of attach.
  final String buttonText;

  /// array of friends ids.
  final List<int> friends;

  /// event ID.
  final int id;

  /// is favorite.
  final bool isFavorite;

  /// Current user's member status.
  final VKGroupsGroupFullMemberStatus memberStatus;

  /// text of attach.
  final String text;

  /// event start time.
  final int time;

  const VKEventsEventAttach({
    this.address,
    @required this.buttonText,
    @required this.friends,
    @required this.id,
    @required this.isFavorite,
    this.memberStatus,
    @required this.text,
    this.time,
  }) : assert(id >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'button_text': buttonText,
      'friends': friends,
      'id': id,
      'is_favorite': isFavorite,
      'member_status': memberStatus?.value,
      'text': text,
      'time': time,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKEventsEventAttach.fromMap(Map<String, dynamic> map) {
    return VKEventsEventAttach(
      address: map['address'] as String,
      buttonText: map['button_text'] as String,
      friends: map['friends'] as List<int>,
      id: map['id'] as int,
      isFavorite: map['is_favorite'] as bool,
      memberStatus: VKGroupsGroupFullMemberStatus(map['member_status']),
      text: map['text'] as String,
      time: map['time'] as int,
    );
  }
}
