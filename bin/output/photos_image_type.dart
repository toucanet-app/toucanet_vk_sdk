/// Photo's type..
class PhotosImageType {
  final String value;

  const PhotosImageType._(this.value);

  factory PhotosImageType(value) {
    if (!values.contains(value)) return null;

    return PhotosImageType._(value);
  }

  static const PhotosImageType s = PhotosImageType._('s');

  static const PhotosImageType m = PhotosImageType._('m');

  static const PhotosImageType x = PhotosImageType._('x');

  static const PhotosImageType l = PhotosImageType._('l');

  static const PhotosImageType o = PhotosImageType._('o');

  static const PhotosImageType p = PhotosImageType._('p');

  static const PhotosImageType q = PhotosImageType._('q');

  static const PhotosImageType r = PhotosImageType._('r');

  static const PhotosImageType y = PhotosImageType._('y');

  static const PhotosImageType z = PhotosImageType._('z');

  static const PhotosImageType w = PhotosImageType._('w');

  static List get values =>
      const ['s', 'm', 'x', 'l', 'o', 'p', 'q', 'r', 'y', 'z', 'w'];

  @override
  String toString() => '$value';
}
