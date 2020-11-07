/// Request status.
class VKAccountNameRequestStatus {
  final String value;

  const VKAccountNameRequestStatus._(this.value);

  factory VKAccountNameRequestStatus(value) {
    if (!values.contains(value)) return null;
    return VKAccountNameRequestStatus._(value);
  }

  static const VKAccountNameRequestStatus declined =
      VKAccountNameRequestStatus._('declined');

  static const VKAccountNameRequestStatus declinedWithLink =
      VKAccountNameRequestStatus._('declined_with_link');

  static const VKAccountNameRequestStatus processing =
      VKAccountNameRequestStatus._('processing');

  static const VKAccountNameRequestStatus response =
      VKAccountNameRequestStatus._('response');

  static const VKAccountNameRequestStatus responseWithLink =
      VKAccountNameRequestStatus._('response_with_link');

  static const VKAccountNameRequestStatus success =
      VKAccountNameRequestStatus._('success');

  static const VKAccountNameRequestStatus wasAccepted =
      VKAccountNameRequestStatus._('was_accepted');

  static const VKAccountNameRequestStatus wasDeclined =
      VKAccountNameRequestStatus._('was_declined');

  static List get values => const [
        'success',
        'processing',
        'declined',
        'was_accepted',
        'was_declined',
        'declined_with_link',
        'response',
        'response_with_link'
      ];

  @override
  String toString() => '$value';
}
