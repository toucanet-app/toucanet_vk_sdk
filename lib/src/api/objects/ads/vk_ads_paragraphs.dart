class VKAdsParagraphs {
  /// Rules paragraph.
  final String paragraph;

  const VKAdsParagraphs({
    this.paragraph,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paragraph': paragraph,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsParagraphs.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsParagraphs(
      paragraph: map['paragraph'] as String,
    );
  }
}
