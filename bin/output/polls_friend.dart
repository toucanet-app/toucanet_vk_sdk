import 'package:meta/meta.dart';

class PollsFriend {
  final int id;

  const PollsFriend({
    @required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory PollsFriend.fromMap(Map<String, dynamic> map) {
    return PollsFriend(
      id: map['id'] as int,
    );
  }
}
