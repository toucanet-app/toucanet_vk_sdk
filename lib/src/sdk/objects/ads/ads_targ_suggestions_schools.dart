import 'ads_targ_suggestions_schools_type.dart';

class VKAdsTargSuggestionsSchools {
  /// Full school title.
  final String desc;

  /// School ID.
  final int id;

  /// School title.
  final String name;

  /// City name.
  final String parent;

  final VKAdsTargSuggestionsSchoolsType type;

  const VKAdsTargSuggestionsSchools({
    this.desc,
    this.id,
    this.name,
    this.parent,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desc': desc,
      'id': id,
      'name': name,
      'parent': parent,
      'type': type?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsTargSuggestionsSchools.fromMap(Map<String, dynamic> map) {
    return VKAdsTargSuggestionsSchools(
      desc: map['desc'] as String,
      id: map['id'] as int,
      name: map['name'] as String,
      parent: map['parent'] as String,
      type: VKAdsTargSuggestionsSchoolsType(map['type']),
    );
  }
}
