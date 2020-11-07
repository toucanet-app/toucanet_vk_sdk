class VKAdsTargSuggestionsRegions {
  /// Object ID.
  final int id;

  /// Object name.
  final String name;

  /// Object type.
  final String type;

  const VKAdsTargSuggestionsRegions({
    this.id,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'type': type,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsTargSuggestionsRegions.fromMap(Map<String, dynamic> map) {
    return VKAdsTargSuggestionsRegions(
      id: map['id'] as int,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
