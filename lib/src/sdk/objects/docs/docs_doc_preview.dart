import 'docs_doc_preview_audio_msg.dart';
import 'docs_doc_preview_graffiti.dart';
import 'docs_doc_preview_photo.dart';
import 'docs_doc_preview_video.dart';

class VKDocsDocPreview {
  final VKDocsDocPreviewAudioMsg audioMsg;

  final VKDocsDocPreviewGraffiti graffiti;

  final VKDocsDocPreviewPhoto photo;

  final VKDocsDocPreviewVideo video;

  const VKDocsDocPreview({
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

  factory VKDocsDocPreview.fromMap(Map<String, dynamic> map) {
    return VKDocsDocPreview(
      audioMsg: VKDocsDocPreviewAudioMsg.fromMap(map['audio_msg']),
      graffiti: VKDocsDocPreviewGraffiti.fromMap(map['graffiti']),
      photo: VKDocsDocPreviewPhoto.fromMap(map['photo']),
      video: VKDocsDocPreviewVideo.fromMap(map['video']),
    );
  }
}
