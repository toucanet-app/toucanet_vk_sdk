import 'package:meta/meta.dart';

import '../base/vk_base_bool_int.dart';
import '../base/vk_base_image.dart';
import '../video/vk_video_restriction_button.dart';

class VKMediaRestriction {
  final String text;

  final String title;

  final VKVideoRestrictionButton button;

  /// Need show restriction always or not.
  final VKBaseBoolInt alwaysShown;

  /// Need blur current video or not.
  final VKBaseBoolInt blur;

  /// Can play video or not.
  final VKBaseBoolInt canPlay;

  /// Can preview video or not.
  final VKBaseBoolInt canPreview;

  final List<VKBaseImage> cardIcon;

  final List<VKBaseImage> listIcon;

  const VKMediaRestriction({
    this.text,
    @required this.title,
    this.button,
    this.alwaysShown,
    this.blur,
    this.canPlay,
    this.canPreview,
    this.cardIcon,
    this.listIcon,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
      'title': title,
      'button': button?.toMap(),
      'always_shown': alwaysShown?.value,
      'blur': blur?.value,
      'can_play': canPlay?.value,
      'can_preview': canPreview?.value,
      'card_icon': cardIcon?.map((item) => item?.toMap())?.toList(),
      'list_icon': listIcon?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMediaRestriction.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMediaRestriction(
      text: map['text'] as String,
      title: map['title'] as String,
      button: VKVideoRestrictionButton.fromMap(map['button']),
      alwaysShown: VKBaseBoolInt(map['always_shown']),
      blur: VKBaseBoolInt(map['blur']),
      canPlay: VKBaseBoolInt(map['can_play']),
      canPreview: VKBaseBoolInt(map['can_preview']),
      cardIcon:
          map['card_icon']?.map((item) => VKBaseImage.fromMap(item))?.toList(),
      listIcon:
          map['list_icon']?.map((item) => VKBaseImage.fromMap(item))?.toList(),
    );
  }
}
