import 'package:meta/meta.dart';

import '../base/vk_base_link.dart';
import '../market/vk_market_market_item.dart';
import '../video/vk_video_video.dart';
import '../wall/vk_wall_wallpost_full.dart';
import 'vk_fave_bookmark_type.dart';
import 'vk_fave_tag.dart';

class VKFaveBookmark {
  /// Timestamp, when this item was bookmarked.
  final int addedDate;

  final VKBaseLink link;

  final VKWallWallpostFull post;

  final VKMarketMarketItem product;

  /// Has user seen this item.
  final bool seen;

  final List<VKFaveTag> tags;

  /// Item type.
  final VKFaveBookmarkType type;

  final VKVideoVideo video;

  const VKFaveBookmark({
    @required this.addedDate,
    this.link,
    this.post,
    this.product,
    @required this.seen,
    @required this.tags,
    @required this.type,
    this.video,
  }) : assert(addedDate >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'added_date': addedDate,
      'link': link?.toMap(),
      'post': post?.toMap(),
      'product': product?.toMap(),
      'seen': seen,
      'tags': tags?.map((item) => item?.toMap())?.toList(),
      'type': type?.value,
      'video': video?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKFaveBookmark.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKFaveBookmark(
      addedDate: map['added_date'] as int,
      link: VKBaseLink.fromMap(map['link']),
      post: VKWallWallpostFull.fromMap(map['post']),
      product: VKMarketMarketItem.fromMap(map['product']),
      seen: map['seen'] as bool,
      tags: map['tags']?.map((item) => VKFaveTag.fromMap(item))?.toList(),
      type: VKFaveBookmarkType(map['type']),
      video: VKVideoVideo.fromMap(map['video']),
    );
  }
}
