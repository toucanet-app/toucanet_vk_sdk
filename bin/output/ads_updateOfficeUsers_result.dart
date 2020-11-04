import 'base_error.dart';
import 'package:meta/meta.dart';

class AdsUpdateOfficeUsersResult {
  final int userId;

  final bool isSuccess;

  final BaseError error;

  const AdsUpdateOfficeUsersResult({
    @required this.userId,
    @required this.isSuccess,
    this.error,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user_id': userId,
      'is_success': isSuccess,
      'error': error?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory AdsUpdateOfficeUsersResult.fromMap(Map<String, dynamic> map) {
    return AdsUpdateOfficeUsersResult(
      userId: map['user_id'] as int,
      isSuccess: map['is_success'] as bool,
      error: BaseError.fromMap(map['error']),
    );
  }
}
