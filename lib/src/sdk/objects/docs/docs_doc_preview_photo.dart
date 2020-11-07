import 'docs_doc_preview_photo_sizes.dart';

class VKDocsDocPreviewPhoto {
  final List<VKDocsDocPreviewPhotoSizes> sizes;

  const VKDocsDocPreviewPhoto({
    this.sizes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sizes': sizes?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKDocsDocPreviewPhoto.fromMap(Map<String, dynamic> map) {
    return VKDocsDocPreviewPhoto(
      sizes:
          map['sizes']?.map((item) => VKDocsDocPreviewPhotoSizes.fromMap(item)),
    );
  }
}
