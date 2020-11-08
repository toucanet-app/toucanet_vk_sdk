class VKDatabaseSchool {
  /// School ID.
  final int id;

  /// School title.
  final String title;

  const VKDatabaseSchool({
    this.id,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKDatabaseSchool.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKDatabaseSchool(
      id: map['id'] as int,
      title: map['title'] as String,
    );
  }
}
