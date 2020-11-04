import 'docs_doc_preview_audio_msg.dart';
import 'docs_doc_preview_graffiti.dart';
import 'docs_doc_preview_photo.dart';
import 'docs_doc_preview_video.dart';

class DocsDocPreview {
  final DocsDocPreviewAudioMsg audioMsg;

  final DocsDocPreviewGraffiti graffiti;

  final DocsDocPreviewPhoto photo;

  final DocsDocPreviewVideo video;

  const DocsDocPreview({
    this.audioMsg,
    this.graffiti,
    this.photo,
    this.video,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audio_msg': audioMsg?.toMap(),
      'graffiti': graffiti?.toMap(),
      'photo': photo?.toMap(),
      'video': video?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory DocsDocPreview.fromMap(Map<String, dynamic> map) {
    return DocsDocPreview(
      audioMsg: DocsDocPreviewAudioMsg.fromMap(map['audio_msg']),
      graffiti: DocsDocPreviewGraffiti.fromMap(map['graffiti']),
      photo: DocsDocPreviewPhoto.fromMap(map['photo']),
      video: DocsDocPreviewVideo.fromMap(map['video']),
    );
  }
}
