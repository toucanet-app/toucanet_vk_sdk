/// Section title.
class VKSearchHintSection {
  final String value;

  const VKSearchHintSection._(this.value);

  factory VKSearchHintSection(value) {
    if (!values.contains(value)) return null;
    return VKSearchHintSection._(value);
  }

  static const VKSearchHintSection correspondents =
      VKSearchHintSection._('correspondents');

  static const VKSearchHintSection events = VKSearchHintSection._('events');

  static const VKSearchHintSection friends = VKSearchHintSection._('friends');

  static const VKSearchHintSection groups = VKSearchHintSection._('groups');

  static const VKSearchHintSection mutualFriends =
      VKSearchHintSection._('mutual_friends');

  static const VKSearchHintSection people = VKSearchHintSection._('people');

  static const VKSearchHintSection publics = VKSearchHintSection._('publics');

  static List get values => const [
        'groups',
        'events',
        'publics',
        'correspondents',
        'people',
        'friends',
        'mutual_friends'
      ];

  @override
  String toString() => '$value';
}
