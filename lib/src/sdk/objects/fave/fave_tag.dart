class VKFaveTag {
  /// Tag id.
  final int id;

  /// Tag name.
  final String name;

  const VKFaveTag({
    this.id,
    this.name,
  }) : assert(id >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKFaveTag.fromMap(Map<String, dynamic> map) {
    return VKFaveTag(
      id: map['id'] as int,
      name: map['name'] as String,
    );
  }
}
