class AccountOffer {
  /// Offer description.
  final String description;

  /// Offer ID.
  final int id;

  /// URL of the preview image.
  final String img;

  /// Instruction how to process the offer.
  final String instruction;

  /// Instruction how to process the offer (HTML format).
  final String instructionHtml;

  /// Offer price.
  final int price;

  /// Offer short description.
  final String shortDescription;

  /// Offer tag.
  final String tag;

  /// Offer title.
  final String title;

  /// Currency amount.
  final double currencyAmount;

  /// Link id.
  final int linkId;

  /// Link type.
  final String linkType;

  const AccountOffer({
    this.description,
    this.id,
    this.img,
    this.instruction,
    this.instructionHtml,
    this.price,
    this.shortDescription,
    this.tag,
    this.title,
    this.currencyAmount,
    this.linkId,
    this.linkType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'id': id,
      'img': img,
      'instruction': instruction,
      'instruction_html': instructionHtml,
      'price': price,
      'short_description': shortDescription,
      'tag': tag,
      'title': title,
      'currency_amount': currencyAmount,
      'link_id': linkId,
      'link_type': linkType,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory AccountOffer.fromMap(Map<String, dynamic> map) {
    return AccountOffer(
      description: map['description'] as String,
      id: map['id'] as int,
      img: map['img'] as String,
      instruction: map['instruction'] as String,
      instructionHtml: map['instruction_html'] as String,
      price: map['price'] as int,
      shortDescription: map['short_description'] as String,
      tag: map['tag'] as String,
      title: map['title'] as String,
      currencyAmount: map['currency_amount'] as double,
      linkId: map['link_id'] as int,
      linkType: map['link_type'] as String,
    );
  }
}
