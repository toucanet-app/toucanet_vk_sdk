/// .
class VKLikesType {
  final String value;

  const VKLikesType._(this.value);

  factory VKLikesType(value) {
    if (!values.contains(value)) return null;
    return VKLikesType._(value);
  }

  static const VKLikesType audio = VKLikesType._('audio');

  static const VKLikesType comment = VKLikesType._('comment');

  static const VKLikesType market = VKLikesType._('market');

  static const VKLikesType marketComment = VKLikesType._('market_comment');

  static const VKLikesType note = VKLikesType._('note');

  static const VKLikesType photo = VKLikesType._('photo');

  static const VKLikesType photoComment = VKLikesType._('photo_comment');

  static const VKLikesType post = VKLikesType._('post');

  static const VKLikesType sitepage = VKLikesType._('sitepage');

  static const VKLikesType topicComment = VKLikesType._('topic_comment');

  static const VKLikesType video = VKLikesType._('video');

  static const VKLikesType videoComment = VKLikesType._('video_comment');

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
