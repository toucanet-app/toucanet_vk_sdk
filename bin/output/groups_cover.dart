import 'base_bool_int.dart';
import 'base_image.dart';
import 'package:meta/meta.dart';

class GroupsCover {
  /// Information whether cover is enabled.
  final BaseBoolInt enabled;

  final List<BaseImage> images;

  const GroupsCover({
    @required this.enabled,
    this.images,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled?.value,
      'images': images?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory GroupsCover.fromMap(Map<String, dynamic> map) {
    return GroupsCover(
      enabled: BaseBoolInt(map['enabled']),
      images: map['images']?.map((item) => BaseImage.fromMap(item)),
    );
  }
}
