import 'base_bool_int.dart';

class GroupsGroupLink {
  /// Link label.
  final String name;

  /// Link description.
  final String desc;

  /// Information whether the title can be edited.
  final BaseBoolInt editTitle;

  /// Link ID.
  final int id;

  /// Information whether the image on processing.
  final BaseBoolInt imageProcessing;

  /// Link URL.
  final String url;

  const GroupsGroupLink({
    this.name,
    this.desc,
    this.editTitle,
    this.id,
    this.imageProcessing,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'desc': desc,
      'edit_title': editTitle?.value,
      'id': id,
      'image_processing': imageProcessing?.value,
      'url': url,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory GroupsGroupLink.fromMap(Map<String, dynamic> map) {
    return GroupsGroupLink(
      name: map['name'] as String,
      desc: map['desc'] as String,
      editTitle: BaseBoolInt(map['edit_title']),
      id: map['id'] as int,
      imageProcessing: BaseBoolInt(map['image_processing']),
      url: map['url'] as String,
    );
  }
}
