class AdsTargSuggestionsCities {
  /// Object ID.
  final int id;

  /// Object name.
  final String name;

  /// Parent object.
  final String parent;

  const AdsTargSuggestionsCities({
    this.id,
    this.name,
    this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'parent': parent,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory AdsTargSuggestionsCities.fromMap(Map<String, dynamic> map) {
    return AdsTargSuggestionsCities(
      id: map['id'] as int,
      name: map['name'] as String,
      parent: map['parent'] as String,
    );
  }
}
