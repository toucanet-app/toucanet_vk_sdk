import 'vk_docs_doc_preview_photo_sizes.dart';

class VKDocsDocPreviewPhoto {
  final List<VKDocsDocPreviewPhotoSizes> sizes;

  const VKDocsDocPreviewPhoto({
    this.sizes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sizes': sizes
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKDocsDocPreviewPhoto.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKDocsDocPreviewPhoto(
      sizes: map['sizes']
          ?.map<VKDocsDocPreviewPhotoSizes>(
            (item) => VKDocsDocPreviewPhotoSizes.fromMap(item),
          )
          ?.toList(),
    );
  }
}
