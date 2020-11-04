

class DatabaseFaculty {
  /// Faculty ID.
  final int id;

  /// Faculty title.
  final String title;

  const DatabaseFaculty({
    this.id,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory DatabaseFaculty.fromMap(Map<String, dynamic> map) {
    return DatabaseFaculty(
      id: map['id'] as int,
      title: map['title'] as String,
    );
  }
}
