class VKDatabaseFaculty {
  /// Faculty ID.
  final int id;

  /// Faculty title.
  final String title;

  const VKDatabaseFaculty({
    this.id,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKDatabaseFaculty.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKDatabaseFaculty(
      id: map['id'] as int,
      title: map['title'] as String,
    );
  }
}
