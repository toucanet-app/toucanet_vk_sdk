import 'package:meta/meta.dart';

import '../base/base_bool_int.dart';
import '../base/base_image.dart';

class VKGroupsCover {
  /// Information whether cover is enabled.
  final VKBaseBoolInt enabled;

  final List<VKBaseImage> images;

  const VKGroupsCover({
    @required this.enabled,
    this.images,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled?.value,
      'images': images?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsCover.fromMap(Map<String, dynamic> map) {
    return VKGroupsCover(
      enabled: VKBaseBoolInt(map['enabled']),
      images: map['images']?.map((item) => VKBaseImage.fromMap(item)),
    );
  }
}
