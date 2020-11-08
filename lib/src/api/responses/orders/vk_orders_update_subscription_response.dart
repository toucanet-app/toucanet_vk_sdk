/// .
class VKOrdersUpdateSubscriptionResponse {
  final int value;

  const VKOrdersUpdateSubscriptionResponse._(this.value);

  factory VKOrdersUpdateSubscriptionResponse(value) {
    if (!values.contains(value)) return null;
    return VKOrdersUpdateSubscriptionResponse._(value);
  }

  static const VKOrdersUpdateSubscriptionResponse no =
      VKOrdersUpdateSubscriptionResponse._(0);

  static const VKOrdersUpdateSubscriptionResponse yes =
      VKOrdersUpdateSubscriptionResponse._(1);

  static List get values => const [0, 1];

  @override
  String toString() => '$value';
}
