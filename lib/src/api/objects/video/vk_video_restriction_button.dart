class VKVideoRestrictionButton {
  final String action;

  final String title;

  const VKVideoRestrictionButton({
    this.action,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'title': title,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKVideoRestrictionButton.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKVideoRestrictionButton(
      action: map['action'] as String,
      title: map['title'] as String,
    );
  }
}
