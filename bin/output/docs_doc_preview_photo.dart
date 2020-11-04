import 'docs_doc_preview_photo_sizes.dart';

class DocsDocPreviewPhoto {
  final List<DocsDocPreviewPhotoSizes> sizes;

  const DocsDocPreviewPhoto({
    this.sizes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sizes': sizes?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory DocsDocPreviewPhoto.fromMap(Map<String, dynamic> map) {
    return DocsDocPreviewPhoto(
      sizes:
          map['sizes']?.map((item) => DocsDocPreviewPhotoSizes.fromMap(item)),
    );
  }
}
