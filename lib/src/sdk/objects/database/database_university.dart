class VKDatabaseUniversity {
  /// University ID.
  final int id;

  /// University title.
  final String title;

  const VKDatabaseUniversity({
    this.id,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKDatabaseUniversity.fromMap(Map<String, dynamic> map) {
    return VKDatabaseUniversity(
      id: map['id'] as int,
      title: map['title'] as String,
    );
  }
}
