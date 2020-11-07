import 'package:meta/meta.dart';

class VKNewsfeedItemWallpostFeedbackAnswer {
  final String title;

  final String id;

  const VKNewsfeedItemWallpostFeedbackAnswer({
    @required this.title,
    @required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'id': id,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNewsfeedItemWallpostFeedbackAnswer.fromMap(
      Map<String, dynamic> map) {
    return VKNewsfeedItemWallpostFeedbackAnswer(
      title: map['title'] as String,
      id: map['id'] as String,
    );
  }
}
