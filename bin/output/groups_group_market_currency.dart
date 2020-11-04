/// .
class GroupsGroupMarketCurrency {
  final int value;

  const GroupsGroupMarketCurrency._(this.value);

  factory GroupsGroupMarketCurrency(value) {
    if (!values.contains(value)) return null;

    return GroupsGroupMarketCurrency._(value);
  }

  static const GroupsGroupMarketCurrency russianRubles = GroupsGroupMarketCurrency._(643);

  static const GroupsGroupMarketCurrency ukrainianHryvnia = GroupsGroupMarketCurrency._(980);

  static const GroupsGroupMarketCurrency kazakhTenge = GroupsGroupMarketCurrency._(398);

  static const GroupsGroupMarketCurrency euro = GroupsGroupMarketCurrency._(978);

  static const GroupsGroupMarketCurrency usDollars = GroupsGroupMarketCurrency._(840);

  static List get values => const [643, 980, 398, 978, 840];

  @override
  String toString() => '$value';
}
