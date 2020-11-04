import 'base_image.dart';
import 'base_link_button_action.dart';

class NewsfeedItemHolidayRecommendationsBlockHeader {
  /// Title of the header.
  final String title;

  /// Subtitle of the header.
  final String subtitle;

  final List<BaseImage> image;

  final BaseLinkButtonAction action;

  const NewsfeedItemHolidayRecommendationsBlockHeader({
    this.title,
    this.subtitle,
    this.image,
    this.action,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'subtitle': subtitle,
      'image': image?.map((item) => item?.toMap()),
      'action': action?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory NewsfeedItemHolidayRecommendationsBlockHeader.fromMap(Map<String, dynamic> map) {
    return NewsfeedItemHolidayRecommendationsBlockHeader(
      title: map['title'] as String,
      subtitle: map['subtitle'] as String,
      image: map['image']?.map((item) => BaseImage.fromMap(item)),
      action: BaseLinkButtonAction.fromMap(map['action']),
    );
  }
}
