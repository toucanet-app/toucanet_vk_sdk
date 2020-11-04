/// .
class NewsfeedCommentsFilters {
  final String value;

  const NewsfeedCommentsFilters._(this.value);

  factory NewsfeedCommentsFilters(value) {
    if (!values.contains(value)) return null;

    return NewsfeedCommentsFilters._(value);
  }

  static const NewsfeedCommentsFilters post = NewsfeedCommentsFilters._('post');

  static const NewsfeedCommentsFilters photo = NewsfeedCommentsFilters._('photo');

  static const NewsfeedCommentsFilters video = NewsfeedCommentsFilters._('video');

  static const NewsfeedCommentsFilters topic = NewsfeedCommentsFilters._('topic');

  static const NewsfeedCommentsFilters note = NewsfeedCommentsFilters._('note');

  static List get values => const ['post', 'photo', 'video', 'topic', 'note'];

  @override
  String toString() => '$value';
}
