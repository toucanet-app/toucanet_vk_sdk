import 'package:meta/meta.dart';

import '../base/vk_base_bool_int.dart';
import 'vk_docs_doc_preview.dart';

class VKDocsDoc {
  /// Document ID.
  final int id;

  /// Document owner ID.
  final int ownerId;

  /// Document title.
  final String title;

  /// File size in bites.
  final int size;

  /// File extension.
  final String ext;

  /// File URL.
  final String url;

  /// Date when file has been uploaded in Unixtime.
  final int date;

  /// Document type.
  final int type;

  final VKDocsDocPreview preview;

  final VKBaseBoolInt isLicensed;

  /// Access key for the document.
  final String accessKey;

  /// Document tags.
  final List<String> tags;

  const VKDocsDoc({
    @required this.id,
    @required this.ownerId,
    @required this.title,
    @required this.size,
    @required this.ext,
    this.url,
    @required this.date,
    @required this.type,
    this.preview,
    this.isLicensed,
    this.accessKey,
    this.tags,
  })  : assert(id >= 0),
        assert(size >= 0),
        assert(date >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'owner_id': ownerId,
      'title': title,
      'size': size,
      'ext': ext,
      'url': url,
      'date': date,
      'type': type,
      'preview': preview?.toMap(),
      'is_licensed': isLicensed?.value,
      'access_key': accessKey,
      'tags': tags,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKDocsDoc.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKDocsDoc(
      id: map['id'] as int,
      ownerId: map['owner_id'] as int,
      title: map['title'] as String,
      size: map['size'] as int,
      ext: map['ext'] as String,
      url: map['url'] as String,
      date: map['date'] as int,
      type: map['type'] as int,
      preview: VKDocsDocPreview.fromMap(map['preview']),
      isLicensed: VKBaseBoolInt(map['is_licensed']),
      accessKey: map['access_key'] as String,
      tags: map['tags'] as List<String>,
    );
  }
}
