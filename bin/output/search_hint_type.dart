/// Object type.
class SearchHintType {
  final String value;

  const SearchHintType._(this.value);

  factory SearchHintType(value) {
    if (!values.contains(value)) return null;

    return SearchHintType._(value);
  }

  static const SearchHintType group = SearchHintType._('group');

  static const SearchHintType profile = SearchHintType._('profile');

  static const SearchHintType vkApp = SearchHintType._('vk_app');

  static const SearchHintType app = SearchHintType._('app');

  static const SearchHintType html5Game = SearchHintType._('html5_game');

  static List get values => const ['group', 'profile', 'vk_app', 'app', 'html5_game'];

  @override
  String toString() => '$value';
}
