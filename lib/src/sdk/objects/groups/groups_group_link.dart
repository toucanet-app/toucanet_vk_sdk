import '../base/base_bool_int.dart';

class VKGroupsGroupLink {
  /// Link label.
  final String name;

  /// Link description.
  final String desc;

  /// Information whether the title can be edited.
  final VKBaseBoolInt editTitle;

  /// Link ID.
  final int id;

  /// Information whether the image on processing.
  final VKBaseBoolInt imageProcessing;

  /// Link URL.
  final String url;

  const VKGroupsGroupLink({
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

  factory VKGroupsGroupLink.fromMap(Map<String, dynamic> map) {
    return VKGroupsGroupLink(
      name: map['name'] as String,
      desc: map['desc'] as String,
      editTitle: VKBaseBoolInt(map['edit_title']),
      id: map['id'] as int,
      imageProcessing: VKBaseBoolInt(map['image_processing']),
      url: map['url'] as String,
    );
  }
}
