import 'apps_app.dart';
import 'base_bool_int.dart';
import 'groups_group.dart';
import 'users_user_min.dart';
import 'search_hint_section.dart';
import 'search_hint_type.dart';
import 'package:meta/meta.dart';

class SearchHint {
  final AppsApp app;

  /// Object description.
  final String description;

  /// Information whether the object has been found globally.
  final BaseBoolInt global;

  final GroupsGroup group;

  final UsersUserMin profile;

  final SearchHintSection section;

  final SearchHintType type;

  const SearchHint({
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

  factory SearchHint.fromMap(Map<String, dynamic> map) {
    return SearchHint(
      app: AppsApp.fromMap(map['app']),
      description: map['description'] as String,
      global: BaseBoolInt(map['global']),
      group: GroupsGroup.fromMap(map['group']),
      profile: UsersUserMin.fromMap(map['profile']),
      section: SearchHintSection(map['section']),
      type: SearchHintType(map['type']),
    );
  }
}
