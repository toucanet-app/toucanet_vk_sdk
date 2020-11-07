import 'package:meta/meta.dart';

class VKStoriesStoryLink {
  /// Link text.
  final String text;

  /// Link URL.
  final String url;

  const VKStoriesStoryLink({
    @required this.text,
    @required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
      'url': url,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStoriesStoryLink.fromMap(Map<String, dynamic> map) {
    return VKStoriesStoryLink(
      text: map['text'] as String,
      url: map['url'] as String,
    );
  }
}
