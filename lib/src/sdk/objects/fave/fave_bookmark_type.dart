/// .
class VKFaveBookmarkType {
  final String value;

  const VKFaveBookmarkType._(this.value);

  factory VKFaveBookmarkType(value) {
    if (!values.contains(value)) return null;
    return VKFaveBookmarkType._(value);
  }

  static const VKFaveBookmarkType article = VKFaveBookmarkType._('article');

  static const VKFaveBookmarkType link = VKFaveBookmarkType._('link');

  static const VKFaveBookmarkType post = VKFaveBookmarkType._('post');

  static const VKFaveBookmarkType product = VKFaveBookmarkType._('product');

  static const VKFaveBookmarkType video = VKFaveBookmarkType._('video');

  static List get values =>
      const ['post', 'video', 'product', 'article', 'link'];

  @override
  String toString() => '$value';
}
