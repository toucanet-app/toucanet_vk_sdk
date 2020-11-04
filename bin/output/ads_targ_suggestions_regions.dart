class AdsTargSuggestionsRegions {
  /// Object ID.
  final int id;

  /// Object name.
  final String name;

  /// Object type.
  final String type;

  const AdsTargSuggestionsRegions({
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

  factory AdsTargSuggestionsRegions.fromMap(Map<String, dynamic> map) {
    return AdsTargSuggestionsRegions(
      id: map['id'] as int,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
