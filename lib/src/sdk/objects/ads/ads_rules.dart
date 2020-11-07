import 'ads_paragraphs.dart';

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
      'paragraphs': paragraphs?.map((item) => item?.toMap()),
      'title': title,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsRules.fromMap(Map<String, dynamic> map) {
    return VKAdsRules(
      paragraphs:
          map['paragraphs']?.map((item) => VKAdsParagraphs.fromMap(item)),
      title: map['title'] as String,
    );
  }
}
