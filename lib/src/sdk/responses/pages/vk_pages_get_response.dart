import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKPagesGetResponse {
  /// Date when the page has been created in Unixtime.
  final int created;

  /// Page creator ID.
  final int creatorId;

  /// Information whether current user can edit the page.
  final VKBaseBoolInt currentUserCanEdit;

  /// Information whether current user can edit the page access settings.
  final VKBaseBoolInt currentUserCanEditAccess;

  /// Date when the page has been edited in Unixtime.
  final int edited;

  /// Last editor ID.
  final int editorId;

  /// Community ID.
  final int groupId;

  /// Page content, HTML.
  final String html;

  /// Page ID.
  final int id;

  /// Page content, wiki.
  final String source;

  /// Page title.
  final String title;

  /// URL of the page preview.
  final String viewUrl;

  /// Views number.
  final int views;

  /// Edit settings of the page.
  final VKPagesPrivacySettings whoCanEdit;

  /// View settings of the page.
  final VKPagesPrivacySettings whoCanView;

  const VKPagesGetResponse({
    @required this.created,
    this.creatorId,
    this.currentUserCanEdit,
    this.currentUserCanEditAccess,
    @required this.edited,
    this.editorId,
    @required this.groupId,
    this.html,
    @required this.id,
    this.source,
    @required this.title,
    @required this.viewUrl,
    @required this.views,
    @required this.whoCanEdit,
    @required this.whoCanView,
  })  : assert(groupId >= 1),
        assert(id >= 1);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': created,
      'creator_id': creatorId,
      'current_user_can_edit': currentUserCanEdit?.value,
      'current_user_can_edit_access': currentUserCanEditAccess?.value,
      'edited': edited,
      'editor_id': editorId,
      'group_id': groupId,
      'html': html,
      'id': id,
      'source': source,
      'title': title,
      'view_url': viewUrl,
      'views': views,
      'who_can_edit': whoCanEdit?.value,
      'who_can_view': whoCanView?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPagesGetResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKPagesGetResponse(
      created: map['created'] as int,
      creatorId: map['creator_id'] as int,
      currentUserCanEdit: VKBaseBoolInt(map['current_user_can_edit']),
      currentUserCanEditAccess:
          VKBaseBoolInt(map['current_user_can_edit_access']),
      edited: map['edited'] as int,
      editorId: map['editor_id'] as int,
      groupId: map['group_id'] as int,
      html: map['html'] as String,
      id: map['id'] as int,
      source: map['source'] as String,
      title: map['title'] as String,
      viewUrl: map['view_url'] as String,
      views: map['views'] as int,
      whoCanEdit: VKPagesPrivacySettings(map['who_can_edit']),
      whoCanView: VKPagesPrivacySettings(map['who_can_view']),
    );
  }
}
