class VKDocsAddResponse {
  /// Doc ID.
  final int id;

  const VKDocsAddResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKDocsAddResponse.fromMap(Map<String, dynamic> map) {
    return VKDocsAddResponse(
      id: map['id'] as int,
    );
  }
}
