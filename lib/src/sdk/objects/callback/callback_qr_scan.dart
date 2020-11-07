import 'package:meta/meta.dart';

class VKCallbackQrScan {
  final int userId;

  final String data;

  final String type;

  final String subtype;

  final bool reread;

  const VKCallbackQrScan({
    @required this.userId,
    @required this.data,
    @required this.type,
    @required this.subtype,
    @required this.reread,
  }) : assert(userId >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user_id': userId,
      'data': data,
      'type': type,
      'subtype': subtype,
      'reread': reread,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKCallbackQrScan.fromMap(Map<String, dynamic> map) {
    return VKCallbackQrScan(
      userId: map['user_id'] as int,
      data: map['data'] as String,
      type: map['type'] as String,
      subtype: map['subtype'] as String,
      reread: map['reread'] as bool,
    );
  }
}
