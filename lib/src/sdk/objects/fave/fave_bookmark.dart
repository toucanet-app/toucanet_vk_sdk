import 'package:meta/meta.dart';

import '../base/base_link.dart';
import '../market/market_market_item.dart';
import '../video/video_video.dart';
import '../wall/wall_wallpost_full.dart';
import 'fave_bookmark_type.dart';
import 'fave_tag.dart';

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
      'tags': tags?.map((item) => item?.toMap()),
      'type': type?.value,
      'video': video?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKFaveBookmark.fromMap(Map<String, dynamic> map) {
    return VKFaveBookmark(
      addedDate: map['added_date'] as int,
      link: VKBaseLink.fromMap(map['link']),
      post: VKWallWallpostFull.fromMap(map['post']),
      product: VKMarketMarketItem.fromMap(map['product']),
      seen: map['seen'] as bool,
      tags: map['tags']?.map((item) => VKFaveTag.fromMap(item)),
      type: VKFaveBookmarkType(map['type']),
      video: VKVideoVideo.fromMap(map['video']),
    );
  }
}
