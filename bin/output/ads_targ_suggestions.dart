

class AdsTargSuggestions {
  /// Object ID.
  final int id;

  /// Object name.
  final String name;

  const AdsTargSuggestions({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory AdsTargSuggestions.fromMap(Map<String, dynamic> map) {
    return AdsTargSuggestions(
      id: map['id'] as int,
      name: map['name'] as String,
    );
  }
}
