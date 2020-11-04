import 'ads_accesses.dart';
import 'package:meta/meta.dart';

class AdsUsers {
  final List<AdsAccesses> accesses;

  /// User ID.
  final int userId;

  const AdsUsers({
    @required this.accesses,
    @required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accesses': accesses?.map((item) => item?.toMap()),
      'user_id': userId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory AdsUsers.fromMap(Map<String, dynamic> map) {
    return AdsUsers(
      accesses: map['accesses']?.map((item) => AdsAccesses.fromMap(item)),
      userId: map['user_id'] as int,
    );
  }
}
