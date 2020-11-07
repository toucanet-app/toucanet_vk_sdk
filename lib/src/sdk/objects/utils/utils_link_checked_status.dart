/// Link status.
class VKUtilsLinkCheckedStatus {
  final String value;

  const VKUtilsLinkCheckedStatus._(this.value);

  factory VKUtilsLinkCheckedStatus(value) {
    if (!values.contains(value)) return null;
    return VKUtilsLinkCheckedStatus._(value);
  }

  static const VKUtilsLinkCheckedStatus banned =
      VKUtilsLinkCheckedStatus._('banned');

  static const VKUtilsLinkCheckedStatus notBanned =
      VKUtilsLinkCheckedStatus._('not_banned');

  static const VKUtilsLinkCheckedStatus processing =
      VKUtilsLinkCheckedStatus._('processing');

  static List get values => const ['not_banned', 'banned', 'processing'];

  @override
  String toString() => '$value';
}
