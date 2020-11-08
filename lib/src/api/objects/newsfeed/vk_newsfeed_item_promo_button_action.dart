class VKNewsfeedItemPromoButtonAction {
  final String url;

  final String type;

  final String target;

  const VKNewsfeedItemPromoButtonAction({
    this.url,
    this.type,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
      'type': type,
      'target': target,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNewsfeedItemPromoButtonAction.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKNewsfeedItemPromoButtonAction(
      url: map['url'] as String,
      type: map['type'] as String,
      target: map['target'] as String,
    );
  }
}
