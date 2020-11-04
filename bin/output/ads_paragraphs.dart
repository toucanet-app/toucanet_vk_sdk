class AdsParagraphs {
  /// Rules paragraph.
  final String paragraph;

  const AdsParagraphs({
    this.paragraph,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paragraph': paragraph,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory AdsParagraphs.fromMap(Map<String, dynamic> map) {
    return AdsParagraphs(
      paragraph: map['paragraph'] as String,
    );
  }
}
