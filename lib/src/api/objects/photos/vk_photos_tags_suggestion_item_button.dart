class VKPhotosTagsSuggestionItemButton {
  final String title;

  final String action;

  final String style;

  const VKPhotosTagsSuggestionItemButton({
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

  factory VKPhotosTagsSuggestionItemButton.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKPhotosTagsSuggestionItemButton(
      title: map['title'] as String,
      action: map['action'] as String,
      style: map['style'] as String,
    );
  }
}
