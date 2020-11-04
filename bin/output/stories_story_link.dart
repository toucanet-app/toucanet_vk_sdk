import 'package:meta/meta.dart';

class StoriesStoryLink {
  /// Link text.
  final String text;

  /// Link URL.
  final String url;

  const StoriesStoryLink({
    @required this.text,
    @required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
      'url': url,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory StoriesStoryLink.fromMap(Map<String, dynamic> map) {
    return StoriesStoryLink(
      text: map['text'] as String,
      url: map['url'] as String,
    );
  }
}
