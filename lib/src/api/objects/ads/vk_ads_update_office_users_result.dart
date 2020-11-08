import 'package:meta/meta.dart';

import '../base/vk_base_error.dart';

class VKAdsUpdateOfficeUsersResult {
  final int userId;

  final bool isSuccess;

  final VKBaseError error;

  const VKAdsUpdateOfficeUsersResult({
    @required this.userId,
    @required this.isSuccess,
    this.error,
  }) : assert(userId >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user_id': userId,
      'is_success': isSuccess,
      'error': error?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsUpdateOfficeUsersResult.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsUpdateOfficeUsersResult(
      userId: map['user_id'] as int,
      isSuccess: map['is_success'] as bool,
      error: VKBaseError.fromMap(map['error']),
    );
  }
}
