import 'package:meta/meta.dart';

import '../base/vk_base_image.dart';

class VKPrettyCardsPrettyCard {
  /// Button key.
  final String button;

  /// Button text in current language.
  final String buttonText;

  /// Card ID (long int returned as string).
  final String cardId;

  final List<VKBaseImage> images;

  /// Link URL.
  final String linkUrl;

  /// Photo ID (format "<owner_id>_<media_id>").
  final String photo;

  /// Price if set (decimal number returned as string).
  final String price;

  /// Old price if set (decimal number returned as string).
  final String priceOld;

  /// Title.
  final String title;

  const VKPrettyCardsPrettyCard({
    this.button,
    this.buttonText,
    @required this.cardId,
    this.images,
    @required this.linkUrl,
    @required this.photo,
    this.price,
    this.priceOld,
    @required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'button': button,
      'button_text': buttonText,
      'card_id': cardId,
      'images': images
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'link_url': linkUrl,
      'photo': photo,
      'price': price,
      'price_old': priceOld,
      'title': title,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPrettyCardsPrettyCard.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKPrettyCardsPrettyCard(
      button: map['button'] as String,
      buttonText: map['button_text'] as String,
      cardId: map['card_id'] as String,
      images: map['images']
          ?.map<VKBaseImage>(
            (item) => VKBaseImage.fromMap(item),
          )
          ?.toList(),
      linkUrl: map['link_url'] as String,
      photo: map['photo'] as String,
      price: map['price'] as String,
      priceOld: map['price_old'] as String,
      title: map['title'] as String,
    );
  }
}
