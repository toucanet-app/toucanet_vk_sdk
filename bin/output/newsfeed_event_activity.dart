import 'groups_group_full_member_status.dart';
import 'package:meta/meta.dart';

class NewsfeedEventActivity {
  /// address of event.
  final String address;

  /// text of attach.
  final String buttonText;

  /// array of friends ids.
  final List<int> friends;

  /// Current user's member status.
  final GroupsGroupFullMemberStatus memberStatus;

  /// text of attach.
  final String text;

  /// event start time.
  final int time;

  const NewsfeedEventActivity({
    this.address,
    @required this.buttonText,
    @required this.friends,
    @required this.memberStatus,
    @required this.text,
    this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'button_text': buttonText,
      'friends': friends,
      'member_status': memberStatus?.value,
      'text': text,
      'time': time,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory NewsfeedEventActivity.fromMap(Map<String, dynamic> map) {
    return NewsfeedEventActivity(
      address: map['address'] as String,
      buttonText: map['button_text'] as String,
      friends: map['friends'] as List<int>,
      memberStatus: GroupsGroupFullMemberStatus(map['member_status']),
      text: map['text'] as String,
      time: map['time'] as int,
    );
  }
}
