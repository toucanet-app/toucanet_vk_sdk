import 'package:meta/meta.dart';

class VKUsersGetSubscriptionsExtendedResponse {
  /// Total number of available results.
  final int count;

  // final List<VKUsersSubscriptionsItem> items;

  const VKUsersGetSubscriptionsExtendedResponse({
    @required this.count,
    // @required this.items,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      // 'items': items
      //     ?.map(
      //       (item) => item?.toMap(),
      //     )
      //     ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKUsersGetSubscriptionsExtendedResponse.fromMap(
      Map<String, dynamic> map) {
    if (map == null) return null;

    return VKUsersGetSubscriptionsExtendedResponse(
      count: map['count'] as int,
      // items: map['items']
      //     ?.map<VKUsersSubscriptionsItem>(
      //       (item) => VKUsersSubscriptionsItem.fromMap(item),
      //     )
      //     ?.toList(),
    );
  }
}
