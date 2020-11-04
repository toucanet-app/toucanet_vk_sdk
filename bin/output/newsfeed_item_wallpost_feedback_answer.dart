import 'package:meta/meta.dart';

class NewsfeedItemWallpostFeedbackAnswer {
  final String title;

  final String id;

  const NewsfeedItemWallpostFeedbackAnswer({
    @required this.title,
    @required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'id': id,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory NewsfeedItemWallpostFeedbackAnswer.fromMap(Map<String, dynamic> map) {
    return NewsfeedItemWallpostFeedbackAnswer(
      title: map['title'] as String,
      id: map['id'] as String,
    );
  }
}
