import '../base/base_bool_int.dart';

class VKGroupsLinksItem {
  /// Link description.
  final String desc;

  /// Information whether the link title can be edited.
  final VKBaseBoolInt editTitle;

  /// Link ID.
  final int id;

  /// Link title.
  final String name;

  /// URL of square image of the link with 100 pixels in width.
  final String photo100;

  /// URL of square image of the link with 50 pixels in width.
  final String photo50;

  /// Link URL.
  final String url;

  const VKGroupsLinksItem({
    this.desc,
    this.editTitle,
    this.id,
    this.name,
    this.photo100,
    this.photo50,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desc': desc,
      'edit_title': editTitle?.value,
      'id': id,
      'name': name,
      'photo_100': photo100,
      'photo_50': photo50,
      'url': url,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsLinksItem.fromMap(Map<String, dynamic> map) {
    return VKGroupsLinksItem(
      desc: map['desc'] as String,
      editTitle: VKBaseBoolInt(map['edit_title']),
      id: map['id'] as int,
      name: map['name'] as String,
      photo100: map['photo_100'] as String,
      photo50: map['photo_50'] as String,
      url: map['url'] as String,
    );
  }
}
