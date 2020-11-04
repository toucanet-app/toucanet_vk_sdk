import 'base_link.dart';
import 'wall_wallpost_full.dart';
import 'market_market_item.dart';
import 'fave_tag.dart';
import 'fave_bookmark_type.dart';
import 'video_video.dart';
import 'package:meta/meta.dart';

class FaveBookmark {
  /// Timestamp, when this item was bookmarked.
  final int addedDate;

  final BaseLink link;

  final WallWallpostFull post;

  final MarketMarketItem product;

  /// Has user seen this item.
  final bool seen;

  final List<FaveTag> tags;

  /// Item type.
  final FaveBookmarkType type;

  final VideoVideo video;

  const FaveBookmark({
    @required this.addedDate,
    this.link,
    this.post,
    this.product,
    @required this.seen,
    @required this.tags,
    @required this.type,
    this.video,
  });

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

  factory FaveBookmark.fromMap(Map<String, dynamic> map) {
    return FaveBookmark(
      addedDate: map['added_date'] as int,
      link: BaseLink.fromMap(map['link']),
      post: WallWallpostFull.fromMap(map['post']),
      product: MarketMarketItem.fromMap(map['product']),
      seen: map['seen'] as bool,
      tags: map['tags']?.map((item) => FaveTag.fromMap(item)),
      type: FaveBookmarkType(map['type']),
      video: VideoVideo.fromMap(map['video']),
    );
  }
}
