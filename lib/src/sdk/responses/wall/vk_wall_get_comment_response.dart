import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKWallGetCommentResponse {
  final List<VKWallWallComment> items;

  const VKWallGetCommentResponse({
    @required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKWallGetCommentResponse.fromMap(Map<String, dynamic> map) {
    return VKWallGetCommentResponse(
      items: map['items']?.map((item) => VKWallWallComment.fromMap(item)),
    );
  }
}
