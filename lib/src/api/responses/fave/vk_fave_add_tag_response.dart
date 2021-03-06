class VKFaveAddTagResponse {
  /// Tag id.
  final int id;

  /// Tag name.
  final String name;

  const VKFaveAddTagResponse({
    this.id,
    this.name,
  }) : assert(id == null || id >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKFaveAddTagResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKFaveAddTagResponse(
      id: map['id'] as int,
      name: map['name'] as String,
    );
  }
}
