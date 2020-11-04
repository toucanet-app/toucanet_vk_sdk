import 'newsfeed_item_wallpost_feedback_type.dart';
import 'newsfeed_item_wallpost_feedback_answer.dart';
import 'package:meta/meta.dart';

class NewsfeedItemWallpostFeedback {
  final NewsfeedItemWallpostFeedbackType type;

  final String question;

  final List<NewsfeedItemWallpostFeedbackAnswer> answers;

  final int starsCount;

  final String gratitude;

  const NewsfeedItemWallpostFeedback({
    @required this.type,
    @required this.question,
    this.answers,
    this.starsCount,
    this.gratitude,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type?.value,
      'question': question,
      'answers': answers?.map((item) => item?.toMap()),
      'stars_count': starsCount,
      'gratitude': gratitude,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory NewsfeedItemWallpostFeedback.fromMap(Map<String, dynamic> map) {
    return NewsfeedItemWallpostFeedback(
      type: NewsfeedItemWallpostFeedbackType(map['type']),
      question: map['question'] as String,
      answers: map['answers']
          ?.map((item) => NewsfeedItemWallpostFeedbackAnswer.fromMap(item)),
      starsCount: map['stars_count'] as int,
      gratitude: map['gratitude'] as String,
    );
  }
}
