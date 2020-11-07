/// .
class VKGroupsGroupMarketCurrency {
  final int value;

  const VKGroupsGroupMarketCurrency._(this.value);

  factory VKGroupsGroupMarketCurrency(value) {
    if (!values.contains(value)) return null;
    return VKGroupsGroupMarketCurrency._(value);
  }

  static const VKGroupsGroupMarketCurrency euro =
      VKGroupsGroupMarketCurrency._(978);

  static const VKGroupsGroupMarketCurrency kazakhTenge =
      VKGroupsGroupMarketCurrency._(398);

  static const VKGroupsGroupMarketCurrency russianRubles =
      VKGroupsGroupMarketCurrency._(643);

  static const VKGroupsGroupMarketCurrency ukrainianHryvnia =
      VKGroupsGroupMarketCurrency._(980);

  static const VKGroupsGroupMarketCurrency usDollars =
      VKGroupsGroupMarketCurrency._(840);

  static List get values => const [643, 980, 398, 978, 840];

  @override
  String toString() => '$value';
}
