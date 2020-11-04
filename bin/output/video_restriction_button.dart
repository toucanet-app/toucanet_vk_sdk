class VideoRestrictionButton {
  final String action;

  final String title;

  const VideoRestrictionButton({
    this.action,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'title': title,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VideoRestrictionButton.fromMap(Map<String, dynamic> map) {
    return VideoRestrictionButton(
      action: map['action'] as String,
      title: map['title'] as String,
    );
  }
}
