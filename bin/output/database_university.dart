class DatabaseUniversity {
  /// University ID.
  final int id;

  /// University title.
  final String title;

  const DatabaseUniversity({
    this.id,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory DatabaseUniversity.fromMap(Map<String, dynamic> map) {
    return DatabaseUniversity(
      id: map['id'] as int,
      title: map['title'] as String,
    );
  }
}
