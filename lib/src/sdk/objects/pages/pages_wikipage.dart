import 'package:meta/meta.dart';

import 'pages_privacy_settings.dart';

class VKPagesWikipage {
  /// Page creator ID.
  final int creatorId;

  /// Page creator name.
  final int creatorName;

  /// Last editor ID.
  final int editorId;

  /// Last editor name.
  final String editorName;

  /// Community ID.
  final int groupId;

  /// Page ID.
  final int id;

  /// Page title.
  final String title;

  /// Views number.
  final int views;

  /// Edit settings of the page.
  final VKPagesPrivacySettings whoCanEdit;

  /// View settings of the page.
  final VKPagesPrivacySettings whoCanView;

  const VKPagesWikipage({
    this.creatorId,
    this.creatorName,
    this.editorId,
    this.editorName,
    @required this.groupId,
    @required this.id,
    @required this.title,
    @required this.views,
    @required this.whoCanEdit,
    @required this.whoCanView,
  })  : assert(groupId >= 1),
        assert(id >= 1);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creator_id': creatorId,
      'creator_name': creatorName,
      'editor_id': editorId,
      'editor_name': editorName,
      'group_id': groupId,
      'id': id,
      'title': title,
      'views': views,
      'who_can_edit': whoCanEdit?.value,
      'who_can_view': whoCanView?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPagesWikipage.fromMap(Map<String, dynamic> map) {
    return VKPagesWikipage(
      creatorId: map['creator_id'] as int,
      creatorName: map['creator_name'] as int,
      editorId: map['editor_id'] as int,
      editorName: map['editor_name'] as String,
      groupId: map['group_id'] as int,
      id: map['id'] as int,
      title: map['title'] as String,
      views: map['views'] as int,
      whoCanEdit: VKPagesPrivacySettings(map['who_can_edit']),
      whoCanView: VKPagesPrivacySettings(map['who_can_view']),
    );
  }
}
