class DatabaseRegion {
  /// Region ID.
  final int id;

  /// Region title.
  final String title;

  const DatabaseRegion({
    this.id,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory DatabaseRegion.fromMap(Map<String, dynamic> map) {
    return DatabaseRegion(
      id: map['id'] as int,
      title: map['title'] as String,
    );
  }
}
