import 'package:meta/meta.dart';

class VKFriendsAddListResponse {
  /// List ID.
  final int listId;

  const VKFriendsAddListResponse({
    @required this.listId,
  }) : assert(listId >= 1);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'list_id': listId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKFriendsAddListResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKFriendsAddListResponse(
      listId: map['list_id'] as int,
    );
  }
}
