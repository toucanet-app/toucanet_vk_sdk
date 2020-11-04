/// Size type.
class PhotosPhotoSizesType {
  final String value;

  const PhotosPhotoSizesType._(this.value);

  factory PhotosPhotoSizesType(value) {
    if (!values.contains(value)) return null;

    return PhotosPhotoSizesType._(value);
  }

  static const PhotosPhotoSizesType s = PhotosPhotoSizesType._('s');

  static const PhotosPhotoSizesType m = PhotosPhotoSizesType._('m');

  static const PhotosPhotoSizesType x = PhotosPhotoSizesType._('x');

  static const PhotosPhotoSizesType o = PhotosPhotoSizesType._('o');

  static const PhotosPhotoSizesType p = PhotosPhotoSizesType._('p');

  static const PhotosPhotoSizesType q = PhotosPhotoSizesType._('q');

  static const PhotosPhotoSizesType r = PhotosPhotoSizesType._('r');

  static const PhotosPhotoSizesType k = PhotosPhotoSizesType._('k');

  static const PhotosPhotoSizesType l = PhotosPhotoSizesType._('l');

  static const PhotosPhotoSizesType y = PhotosPhotoSizesType._('y');

  static const PhotosPhotoSizesType z = PhotosPhotoSizesType._('z');

  static const PhotosPhotoSizesType c = PhotosPhotoSizesType._('c');

  static const PhotosPhotoSizesType w = PhotosPhotoSizesType._('w');

  static List get values =>
      const ['s', 'm', 'x', 'o', 'p', 'q', 'r', 'k', 'l', 'y', 'z', 'c', 'w'];

  @override
  String toString() => '$value';
}
