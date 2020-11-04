/// .
class StoriesUploadLinkText {
  final String value;

  const StoriesUploadLinkText._(this.value);

  factory StoriesUploadLinkText(value) {
    if (!values.contains(value)) return null;

    return StoriesUploadLinkText._(value);
  }

  static const StoriesUploadLinkText toStore =
      StoriesUploadLinkText._('to_store');

  static const StoriesUploadLinkText vote = StoriesUploadLinkText._('vote');

  static const StoriesUploadLinkText more = StoriesUploadLinkText._('more');

  static const StoriesUploadLinkText book = StoriesUploadLinkText._('book');

  static const StoriesUploadLinkText order = StoriesUploadLinkText._('order');

  static const StoriesUploadLinkText enroll = StoriesUploadLinkText._('enroll');

  static const StoriesUploadLinkText fill = StoriesUploadLinkText._('fill');

  static const StoriesUploadLinkText signup = StoriesUploadLinkText._('signup');

  static const StoriesUploadLinkText buy = StoriesUploadLinkText._('buy');

  static const StoriesUploadLinkText ticket = StoriesUploadLinkText._('ticket');

  static const StoriesUploadLinkText write = StoriesUploadLinkText._('write');

  static const StoriesUploadLinkText open = StoriesUploadLinkText._('open');

  static const StoriesUploadLinkText learnMore =
      StoriesUploadLinkText._('learn_more');

  static const StoriesUploadLinkText view = StoriesUploadLinkText._('view');

  static const StoriesUploadLinkText goTo = StoriesUploadLinkText._('go_to');

  static const StoriesUploadLinkText contact =
      StoriesUploadLinkText._('contact');

  static const StoriesUploadLinkText watch = StoriesUploadLinkText._('watch');

  static const StoriesUploadLinkText play = StoriesUploadLinkText._('play');

  static const StoriesUploadLinkText install =
      StoriesUploadLinkText._('install');

  static const StoriesUploadLinkText read = StoriesUploadLinkText._('read');

  static const StoriesUploadLinkText calendar =
      StoriesUploadLinkText._('calendar');

  static List get values => const [
        'to_store',
        'vote',
        'more',
        'book',
        'order',
        'enroll',
        'fill',
        'signup',
        'buy',
        'ticket',
        'write',
        'open',
        'learn_more',
        'view',
        'go_to',
        'contact',
        'watch',
        'play',
        'install',
        'read',
        'calendar'
      ];

  @override
  String toString() => '$value';
}
