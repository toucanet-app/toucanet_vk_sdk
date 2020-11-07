class VKDatabaseRegion {
  /// Region ID.
  final int id;

  /// Region title.
  final String title;

  const VKDatabaseRegion({
    this.id,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKDatabaseRegion.fromMap(Map<String, dynamic> map) {
    return VKDatabaseRegion(
      id: map['id'] as int,
      title: map['title'] as String,
    );
  }
}
