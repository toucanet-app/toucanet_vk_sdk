import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKLikesIsLikedResponse {
  /// Information whether user liked the object.
  final VKBaseBoolInt liked;

  /// Information whether user reposted the object.
  final VKBaseBoolInt copied;

  const VKLikesIsLikedResponse({
    @required this.liked,
    @required this.copied,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'liked': liked?.value,
      'copied': copied?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKLikesIsLikedResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKLikesIsLikedResponse(
      liked: VKBaseBoolInt(map['liked']),
      copied: VKBaseBoolInt(map['copied']),
    );
  }
}
