class VKAdsTargSuggestions {
  /// Object ID.
  final int id;

  /// Object name.
  final String name;

  const VKAdsTargSuggestions({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsTargSuggestions.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsTargSuggestions(
      id: map['id'] as int,
      name: map['name'] as String,
    );
  }
}
