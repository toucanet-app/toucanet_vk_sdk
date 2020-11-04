

class DatabaseSchool {
  /// School ID.
  final int id;

  /// School title.
  final String title;

  const DatabaseSchool({
    this.id,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory DatabaseSchool.fromMap(Map<String, dynamic> map) {
    return DatabaseSchool(
      id: map['id'] as int,
      title: map['title'] as String,
    );
  }
}
