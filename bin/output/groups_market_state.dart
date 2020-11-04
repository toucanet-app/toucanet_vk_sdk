/// Declares state if market is enabled in group..
class GroupsMarketState {
  final String value;

  const GroupsMarketState._(this.value);

  factory GroupsMarketState(value) {
    if (!values.contains(value)) return null;

    return GroupsMarketState._(value);
  }

  static const GroupsMarketState none = GroupsMarketState._('none');

  static const GroupsMarketState basic = GroupsMarketState._('basic');

  static const GroupsMarketState advanced = GroupsMarketState._('advanced');

  static List get values => const ['none', 'basic', 'advanced'];

  @override
  String toString() => '$value';
}
