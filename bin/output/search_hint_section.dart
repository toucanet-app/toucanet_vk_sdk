/// Section title.
class SearchHintSection {
  final String value;

  const SearchHintSection._(this.value);

  factory SearchHintSection(value) {
    if (!values.contains(value)) return null;

    return SearchHintSection._(value);
  }

  static const SearchHintSection groups = SearchHintSection._('groups');

  static const SearchHintSection events = SearchHintSection._('events');

  static const SearchHintSection publics = SearchHintSection._('publics');

  static const SearchHintSection correspondents =
      SearchHintSection._('correspondents');

  static const SearchHintSection people = SearchHintSection._('people');

  static const SearchHintSection friends = SearchHintSection._('friends');

  static const SearchHintSection mutualFriends =
      SearchHintSection._('mutual_friends');

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
