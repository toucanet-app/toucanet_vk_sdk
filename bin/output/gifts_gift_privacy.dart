/// Gift privacy.
class GiftsGiftPrivacy {
  final int value;

  const GiftsGiftPrivacy._(this.value);

  factory GiftsGiftPrivacy(value) {
    if (!values.contains(value)) return null;

    return GiftsGiftPrivacy._(value);
  }

  static const GiftsGiftPrivacy nameAndMessageForAll = GiftsGiftPrivacy._(0);

  static const GiftsGiftPrivacy nameForAll = GiftsGiftPrivacy._(1);

  static const GiftsGiftPrivacy nameAndMessageForRecipientOnly = GiftsGiftPrivacy._(2);

  static List get values => const [0, 1, 2];

  @override
  String toString() => '$value';
}
