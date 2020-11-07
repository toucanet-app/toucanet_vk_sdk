import 'package:meta/meta.dart';

class VKPollsFriend {
  final int id;

  const VKPollsFriend({
    @required this.id,
  }) : assert(id >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPollsFriend.fromMap(Map<String, dynamic> map) {
    return VKPollsFriend(
      id: map['id'] as int,
    );
  }
}
