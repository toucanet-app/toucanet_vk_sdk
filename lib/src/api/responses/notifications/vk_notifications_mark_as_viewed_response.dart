/// .
class VKNotificationsMarkAsViewedResponse {
  final int value;

  const VKNotificationsMarkAsViewedResponse._(this.value);

  factory VKNotificationsMarkAsViewedResponse(value) {
    if (!values.contains(value)) return null;
    return VKNotificationsMarkAsViewedResponse._(value);
  }

  static const VKNotificationsMarkAsViewedResponse no =
      VKNotificationsMarkAsViewedResponse._(0);

  static const VKNotificationsMarkAsViewedResponse yes =
      VKNotificationsMarkAsViewedResponse._(1);

  static List get values => const [0, 1];

  @override
  String toString() => '$value';
}
