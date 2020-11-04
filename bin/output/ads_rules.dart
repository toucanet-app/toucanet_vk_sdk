import 'ads_paragraphs.dart';

class AdsRules {
  final List<AdsParagraphs> paragraphs;

  /// Comment.
  final String title;

  const AdsRules({
    this.paragraphs,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paragraphs': paragraphs?.map((item) => item?.toMap()),
      'title': title,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory AdsRules.fromMap(Map<String, dynamic> map) {
    return AdsRules(
      paragraphs: map['paragraphs']?.map((item) => AdsParagraphs.fromMap(item)),
      title: map['title'] as String,
    );
  }
}
