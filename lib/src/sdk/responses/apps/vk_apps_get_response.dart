import '../../objects/vk_objects.dart';

class VKAppsGetResponse {
  /// Total number of applications.
  final int count;

  /// List of applications.
  final List<VKAppsApp> items;

  const VKAppsGetResponse({
    this.count,
    this.items,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAppsGetResponse.fromMap(Map<String, dynamic> map) {
    return VKAppsGetResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKAppsApp.fromMap(item)),
    );
  }
}
