import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKDocsGetResponse {
  /// Total number.
  final int count;

  final List<VKDocsDoc> items;

  const VKDocsGetResponse({
    @required this.count,
    @required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKDocsGetResponse.fromMap(Map<String, dynamic> map) {
    return VKDocsGetResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKDocsDoc.fromMap(item)),
    );
  }
}
