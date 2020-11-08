/// .
class VKStoriesUploadLinkText {
  final String value;

  const VKStoriesUploadLinkText._(this.value);

  factory VKStoriesUploadLinkText(value) {
    if (!values.contains(value)) return null;
    return VKStoriesUploadLinkText._(value);
  }

  static const VKStoriesUploadLinkText book = VKStoriesUploadLinkText._('book');

  static const VKStoriesUploadLinkText buy = VKStoriesUploadLinkText._('buy');

  static const VKStoriesUploadLinkText calendar =
      VKStoriesUploadLinkText._('calendar');

  static const VKStoriesUploadLinkText contact =
      VKStoriesUploadLinkText._('contact');

  static const VKStoriesUploadLinkText enroll =
      VKStoriesUploadLinkText._('enroll');

  static const VKStoriesUploadLinkText fill = VKStoriesUploadLinkText._('fill');

  static const VKStoriesUploadLinkText goTo =
      VKStoriesUploadLinkText._('go_to');

  static const VKStoriesUploadLinkText install =
      VKStoriesUploadLinkText._('install');

  static const VKStoriesUploadLinkText learnMore =
      VKStoriesUploadLinkText._('learn_more');

  static const VKStoriesUploadLinkText more = VKStoriesUploadLinkText._('more');

  static const VKStoriesUploadLinkText open = VKStoriesUploadLinkText._('open');

  static const VKStoriesUploadLinkText order =
      VKStoriesUploadLinkText._('order');

  static const VKStoriesUploadLinkText play = VKStoriesUploadLinkText._('play');

  static const VKStoriesUploadLinkText read = VKStoriesUploadLinkText._('read');

  static const VKStoriesUploadLinkText signup =
      VKStoriesUploadLinkText._('signup');

  static const VKStoriesUploadLinkText ticket =
      VKStoriesUploadLinkText._('ticket');

  static const VKStoriesUploadLinkText toStore =
      VKStoriesUploadLinkText._('to_store');

  static const VKStoriesUploadLinkText view = VKStoriesUploadLinkText._('view');

  static const VKStoriesUploadLinkText vote = VKStoriesUploadLinkText._('vote');

  static const VKStoriesUploadLinkText watch =
      VKStoriesUploadLinkText._('watch');

  static const VKStoriesUploadLinkText write =
      VKStoriesUploadLinkText._('write');

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
