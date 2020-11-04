import 'photos_tags_suggestion_item_button.dart';
import 'photos_photo.dart';
import 'photos_photo_tag.dart';

class PhotosTagsSuggestionItem {
  final String title;

  final String caption;

  final String type;

  final List<PhotosTagsSuggestionItemButton> buttons;

  final PhotosPhoto photo;

  final List<PhotosPhotoTag> tags;

  final String trackCode;

  const PhotosTagsSuggestionItem({
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

  factory PhotosTagsSuggestionItem.fromMap(Map<String, dynamic> map) {
    return PhotosTagsSuggestionItem(
      title: map['title'] as String,
      caption: map['caption'] as String,
      type: map['type'] as String,
      buttons: map['buttons']
          ?.map((item) => PhotosTagsSuggestionItemButton.fromMap(item)),
      photo: PhotosPhoto.fromMap(map['photo']),
      tags: map['tags']?.map((item) => PhotosPhotoTag.fromMap(item)),
      trackCode: map['track_code'] as String,
    );
  }
}
