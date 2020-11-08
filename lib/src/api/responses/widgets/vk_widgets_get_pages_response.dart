import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKWidgetsGetPagesResponse {
  /// Total number.
  final int count;

  final List<VKWidgetsWidgetPage> pages;

  const VKWidgetsGetPagesResponse({
    @required this.count,
    @required this.pages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'pages': pages
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKWidgetsGetPagesResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKWidgetsGetPagesResponse(
      count: map['count'] as int,
      pages: map['pages']
          ?.map<VKWidgetsWidgetPage>(
            (item) => VKWidgetsWidgetPage.fromMap(item),
          )
          ?.toList(),
    );
  }
}
