import 'video_restriction_button.dart';
import 'base_bool_int.dart';
import 'base_image.dart';
import 'package:meta/meta.dart';

class MediaRestriction {
  final String text;

  final String title;

  final VideoRestrictionButton button;

  /// Need show restriction always or not.
  final BaseBoolInt alwaysShown;

  /// Need blur current video or not.
  final BaseBoolInt blur;

  /// Can play video or not.
  final BaseBoolInt canPlay;

  /// Can preview video or not.
  final BaseBoolInt canPreview;

  final List<BaseImage> cardIcon;

  final List<BaseImage> listIcon;

  const MediaRestriction({
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
      'card_icon': cardIcon?.map((item) => item?.toMap()),
      'list_icon': listIcon?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory MediaRestriction.fromMap(Map<String, dynamic> map) {
    return MediaRestriction(
      text: map['text'] as String,
      title: map['title'] as String,
      button: VideoRestrictionButton.fromMap(map['button']),
      alwaysShown: BaseBoolInt(map['always_shown']),
      blur: BaseBoolInt(map['blur']),
      canPlay: BaseBoolInt(map['can_play']),
      canPreview: BaseBoolInt(map['can_preview']),
      cardIcon: map['card_icon']?.map((item) => BaseImage.fromMap(item)),
      listIcon: map['list_icon']?.map((item) => BaseImage.fromMap(item)),
    );
  }
}
