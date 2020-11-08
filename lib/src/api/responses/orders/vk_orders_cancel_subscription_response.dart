/// .
class VKOrdersCancelSubscriptionResponse {
  final int value;

  const VKOrdersCancelSubscriptionResponse._(this.value);

  factory VKOrdersCancelSubscriptionResponse(value) {
    if (!values.contains(value)) return null;
    return VKOrdersCancelSubscriptionResponse._(value);
  }

  static const VKOrdersCancelSubscriptionResponse no =
      VKOrdersCancelSubscriptionResponse._(0);

  static const VKOrdersCancelSubscriptionResponse yes =
      VKOrdersCancelSubscriptionResponse._(1);

  static List get values => const [0, 1];

  @override
  String toString() => '$value';
}
