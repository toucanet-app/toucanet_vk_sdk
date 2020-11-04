/// .
class LikesType {
  final String value;

  const LikesType._(this.value);

  factory LikesType(value) {
    if (!values.contains(value)) return null;

    return LikesType._(value);
  }

  static const LikesType post = LikesType._('post');

  static const LikesType comment = LikesType._('comment');

  static const LikesType photo = LikesType._('photo');

  static const LikesType audio = LikesType._('audio');

  static const LikesType video = LikesType._('video');

  static const LikesType note = LikesType._('note');

  static const LikesType market = LikesType._('market');

  static const LikesType photoComment = LikesType._('photo_comment');

  static const LikesType videoComment = LikesType._('video_comment');

  static const LikesType topicComment = LikesType._('topic_comment');

  static const LikesType marketComment = LikesType._('market_comment');

  static const LikesType sitepage = LikesType._('sitepage');

  static List get values => const [
        'post',
        'comment',
        'photo',
        'audio',
        'video',
        'note',
        'market',
        'photo_comment',
        'video_comment',
        'topic_comment',
        'market_comment',
        'sitepage'
      ];

  @override
  String toString() => '$value';
}
