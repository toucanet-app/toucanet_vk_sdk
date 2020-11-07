/// Gift privacy.
class VKGiftsGiftPrivacy {
  final int value;

  const VKGiftsGiftPrivacy._(this.value);

  factory VKGiftsGiftPrivacy(value) {
    if (!values.contains(value)) return null;
    return VKGiftsGiftPrivacy._(value);
  }

  static const VKGiftsGiftPrivacy nameAndMessageForAll =
      VKGiftsGiftPrivacy._(0);

  static const VKGiftsGiftPrivacy nameAndMessageForRecipientOnly =
      VKGiftsGiftPrivacy._(2);

  static const VKGiftsGiftPrivacy nameForAll = VKGiftsGiftPrivacy._(1);

  static List get values => const [0, 1, 2];

  @override
  String toString() => '$value';
}
