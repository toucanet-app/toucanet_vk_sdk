import '../base/vk_base_image.dart';
import '../base/vk_base_link_button_action.dart';

class VKNewsfeedItemHolidayRecommendationsBlockHeader {
  /// Title of the header.
  final String title;

  /// Subtitle of the header.
  final String subtitle;

  final List<VKBaseImage> image;

  final VKBaseLinkButtonAction action;

  const VKNewsfeedItemHolidayRecommendationsBlockHeader({
    this.title,
    this.subtitle,
    this.image,
    this.action,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'subtitle': subtitle,
      'image': image
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'action': action?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNewsfeedItemHolidayRecommendationsBlockHeader.fromMap(
      Map<String, dynamic> map) {
    if (map == null) return null;

    return VKNewsfeedItemHolidayRecommendationsBlockHeader(
      title: map['title'] as String,
      subtitle: map['subtitle'] as String,
      image: map['image']
          ?.map<VKBaseImage>(
            (item) => VKBaseImage.fromMap(item),
          )
          ?.toList(),
      action: VKBaseLinkButtonAction.fromMap(map['action']),
    );
  }
}
