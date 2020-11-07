import 'package:meta/meta.dart';

import '../apps/apps_app.dart';
import '../base/base_bool_int.dart';
import '../groups/groups_group.dart';
import '../users/users_user_min.dart';
import 'search_hint_section.dart';
import 'search_hint_type.dart';

class VKSearchHint {
  final VKAppsApp app;

  /// Object description.
  final String description;

  /// Information whether the object has been found globally.
  final VKBaseBoolInt global;

  final VKGroupsGroup group;

  final VKUsersUserMin profile;

  final VKSearchHintSection section;

  final VKSearchHintType type;

  const VKSearchHint({
    this.app,
    @required this.description,
    this.global,
    this.group,
    this.profile,
    @required this.section,
    @required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'app': app?.toMap(),
      'description': description,
      'global': global?.value,
      'group': group?.toMap(),
      'profile': profile?.toMap(),
      'section': section?.value,
      'type': type?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKSearchHint.fromMap(Map<String, dynamic> map) {
    return VKSearchHint(
      app: VKAppsApp.fromMap(map['app']),
      description: map['description'] as String,
      global: VKBaseBoolInt(map['global']),
      group: VKGroupsGroup.fromMap(map['group']),
      profile: VKUsersUserMin.fromMap(map['profile']),
      section: VKSearchHintSection(map['section']),
      type: VKSearchHintType(map['type']),
    );
  }
}
