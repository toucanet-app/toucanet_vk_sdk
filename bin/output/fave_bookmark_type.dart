/// .
class FaveBookmarkType {
  final String value;

  const FaveBookmarkType._(this.value);

  factory FaveBookmarkType(value) {
    if (!values.contains(value)) return null;

    return FaveBookmarkType._(value);
  }

  static const FaveBookmarkType post = FaveBookmarkType._('post');

  static const FaveBookmarkType video = FaveBookmarkType._('video');

  static const FaveBookmarkType product = FaveBookmarkType._('product');

  static const FaveBookmarkType article = FaveBookmarkType._('article');

  static const FaveBookmarkType link = FaveBookmarkType._('link');

  static List get values =>
      const ['post', 'video', 'product', 'article', 'link'];

  @override
  String toString() => '$value';
}
