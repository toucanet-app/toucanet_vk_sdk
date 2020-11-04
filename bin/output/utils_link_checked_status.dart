/// Link status.
class UtilsLinkCheckedStatus {
  final String value;

  const UtilsLinkCheckedStatus._(this.value);

  factory UtilsLinkCheckedStatus(value) {
    if (!values.contains(value)) return null;

    return UtilsLinkCheckedStatus._(value);
  }

  static const UtilsLinkCheckedStatus notBanned = UtilsLinkCheckedStatus._('not_banned');

  static const UtilsLinkCheckedStatus banned = UtilsLinkCheckedStatus._('banned');

  static const UtilsLinkCheckedStatus processing = UtilsLinkCheckedStatus._('processing');

  static List get values => const ['not_banned', 'banned', 'processing'];

  @override
  String toString() => '$value';
}
