import 'vk_ads_paragraphs.dart';

class VKAdsRules {
  final List<VKAdsParagraphs> paragraphs;

  /// Comment.
  final String title;

  const VKAdsRules({
    this.paragraphs,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paragraphs': paragraphs
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'title': title,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsRules.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsRules(
      paragraphs: map['paragraphs']
          ?.map<VKAdsParagraphs>(
            (item) => VKAdsParagraphs.fromMap(item),
          )
          ?.toList(),
      title: map['title'] as String,
    );
  }
}
