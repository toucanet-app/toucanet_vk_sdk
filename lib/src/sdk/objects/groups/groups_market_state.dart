/// Declares state if market is enabled in group..
class VKGroupsMarketState {
  final String value;

  const VKGroupsMarketState._(this.value);

  factory VKGroupsMarketState(value) {
    if (!values.contains(value)) return null;
    return VKGroupsMarketState._(value);
  }

  static const VKGroupsMarketState advanced = VKGroupsMarketState._('advanced');

  static const VKGroupsMarketState basic = VKGroupsMarketState._('basic');

  static const VKGroupsMarketState none = VKGroupsMarketState._('none');

  static List get values => const ['none', 'basic', 'advanced'];

  @override
  String toString() => '$value';
}
