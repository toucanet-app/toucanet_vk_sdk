

class NewsfeedItemPromoButtonAction {
  final String url;

  final String type;

  final String target;

  const NewsfeedItemPromoButtonAction({
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

  factory NewsfeedItemPromoButtonAction.fromMap(Map<String, dynamic> map) {
    return NewsfeedItemPromoButtonAction(
      url: map['url'] as String,
      type: map['type'] as String,
      target: map['target'] as String,
    );
  }
}
