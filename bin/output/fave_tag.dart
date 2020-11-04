class FaveTag {
  /// Tag id.
  final int id;

  /// Tag name.
  final String name;

  const FaveTag({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory FaveTag.fromMap(Map<String, dynamic> map) {
    return FaveTag(
      id: map['id'] as int,
      name: map['name'] as String,
    );
  }
}
