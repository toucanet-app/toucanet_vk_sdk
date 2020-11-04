class PhotosTagsSuggestionItemButton {
  final String title;

  final String action;

  final String style;

  const PhotosTagsSuggestionItemButton({
    this.title,
    this.action,
    this.style,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'action': action,
      'style': style,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory PhotosTagsSuggestionItemButton.fromMap(Map<String, dynamic> map) {
    return PhotosTagsSuggestionItemButton(
      title: map['title'] as String,
      action: map['action'] as String,
      style: map['style'] as String,
    );
  }
}
