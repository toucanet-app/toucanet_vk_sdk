import 'photos_photo.dart';
import 'photos_photo_tag.dart';
import 'photos_tags_suggestion_item_button.dart';

class VKPhotosTagsSuggestionItem {
  final String title;

  final String caption;

  final String type;

  final List<VKPhotosTagsSuggestionItemButton> buttons;

  final VKPhotosPhoto photo;

  final List<VKPhotosPhotoTag> tags;

  final String trackCode;

  const VKPhotosTagsSuggestionItem({
    this.title,
    this.caption,
    this.type,
    this.buttons,
    this.photo,
    this.tags,
    this.trackCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'caption': caption,
      'type': type,
      'buttons': buttons?.map((item) => item?.toMap()),
      'photo': photo?.toMap(),
      'tags': tags?.map((item) => item?.toMap()),
      'track_code': trackCode,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosTagsSuggestionItem.fromMap(Map<String, dynamic> map) {
    return VKPhotosTagsSuggestionItem(
      title: map['title'] as String,
      caption: map['caption'] as String,
      type: map['type'] as String,
      buttons: map['buttons']
          ?.map((item) => VKPhotosTagsSuggestionItemButton.fromMap(item)),
      photo: VKPhotosPhoto.fromMap(map['photo']),
      tags: map['tags']?.map((item) => VKPhotosPhotoTag.fromMap(item)),
      trackCode: map['track_code'] as String,
    );
  }
}
