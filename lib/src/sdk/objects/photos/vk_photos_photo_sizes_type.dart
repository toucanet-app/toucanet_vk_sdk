/// Size type.
class VKPhotosPhotoSizesType {
  final String value;

  const VKPhotosPhotoSizesType._(this.value);

  factory VKPhotosPhotoSizesType(value) {
    if (!values.contains(value)) return null;
    return VKPhotosPhotoSizesType._(value);
  }

  static const VKPhotosPhotoSizesType c = VKPhotosPhotoSizesType._('c');

  static const VKPhotosPhotoSizesType k = VKPhotosPhotoSizesType._('k');

  static const VKPhotosPhotoSizesType l = VKPhotosPhotoSizesType._('l');

  static const VKPhotosPhotoSizesType m = VKPhotosPhotoSizesType._('m');

  static const VKPhotosPhotoSizesType o = VKPhotosPhotoSizesType._('o');

  static const VKPhotosPhotoSizesType p = VKPhotosPhotoSizesType._('p');

  static const VKPhotosPhotoSizesType q = VKPhotosPhotoSizesType._('q');

  static const VKPhotosPhotoSizesType r = VKPhotosPhotoSizesType._('r');

  static const VKPhotosPhotoSizesType s = VKPhotosPhotoSizesType._('s');

  static const VKPhotosPhotoSizesType w = VKPhotosPhotoSizesType._('w');

  static const VKPhotosPhotoSizesType x = VKPhotosPhotoSizesType._('x');

  static const VKPhotosPhotoSizesType y = VKPhotosPhotoSizesType._('y');

  static const VKPhotosPhotoSizesType z = VKPhotosPhotoSizesType._('z');

  static List get values =>
      const ['s', 'm', 'x', 'o', 'p', 'q', 'r', 'k', 'l', 'y', 'z', 'c', 'w'];

  @override
  String toString() => '$value';
}
