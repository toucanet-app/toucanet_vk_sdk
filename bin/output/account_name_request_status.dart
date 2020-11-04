/// Request status.
class AccountNameRequestStatus {
  final String value;

  const AccountNameRequestStatus._(this.value);

  factory AccountNameRequestStatus(value) {
    if (!values.contains(value)) return null;

    return AccountNameRequestStatus._(value);
  }

  static const AccountNameRequestStatus success =
      AccountNameRequestStatus._('success');

  static const AccountNameRequestStatus processing =
      AccountNameRequestStatus._('processing');

  static const AccountNameRequestStatus declined =
      AccountNameRequestStatus._('declined');

  static const AccountNameRequestStatus wasAccepted =
      AccountNameRequestStatus._('was_accepted');

  static const AccountNameRequestStatus wasDeclined =
      AccountNameRequestStatus._('was_declined');

  static const AccountNameRequestStatus declinedWithLink =
      AccountNameRequestStatus._('declined_with_link');

  static const AccountNameRequestStatus response =
      AccountNameRequestStatus._('response');

  static const AccountNameRequestStatus responseWithLink =
      AccountNameRequestStatus._('response_with_link');

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
