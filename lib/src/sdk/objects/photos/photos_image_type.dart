/// Photo's type..
class VKPhotosImageType {
  final String value;

  const VKPhotosImageType._(this.value);

  factory VKPhotosImageType(value) {
    if (!values.contains(value)) return null;
    return VKPhotosImageType._(value);
  }

  static const VKPhotosImageType l = VKPhotosImageType._('l');

  static const VKPhotosImageType m = VKPhotosImageType._('m');

  static const VKPhotosImageType o = VKPhotosImageType._('o');

  static const VKPhotosImageType p = VKPhotosImageType._('p');

  static const VKPhotosImageType q = VKPhotosImageType._('q');

  static const VKPhotosImageType r = VKPhotosImageType._('r');

  static const VKPhotosImageType s = VKPhotosImageType._('s');

  static const VKPhotosImageType w = VKPhotosImageType._('w');

  static const VKPhotosImageType x = VKPhotosImageType._('x');

  static const VKPhotosImageType y = VKPhotosImageType._('y');

  static const VKPhotosImageType z = VKPhotosImageType._('z');

  static List get values =>
      const ['s', 'm', 'x', 'l', 'o', 'p', 'q', 'r', 'y', 'z', 'w'];

  @override
  String toString() => '$value';
}
