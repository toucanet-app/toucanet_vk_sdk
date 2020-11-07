import 'package:meta/meta.dart';

import 'newsfeed_item_wallpost_feedback_answer.dart';
import 'newsfeed_item_wallpost_feedback_type.dart';

class VKNewsfeedItemWallpostFeedback {
  final VKNewsfeedItemWallpostFeedbackType type;

  final String question;

  final List<VKNewsfeedItemWallpostFeedbackAnswer> answers;

  final int starsCount;

  final String gratitude;

  const VKNewsfeedItemWallpostFeedback({
    @required this.type,
    @required this.question,
    this.answers,
    this.starsCount,
    this.gratitude,
  }) : assert(starsCount >= 2 && starsCount <= 5);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type?.value,
      'question': question,
      'answers': answers?.map((item) => item?.toMap()),
      'stars_count': starsCount,
      'gratitude': gratitude,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNewsfeedItemWallpostFeedback.fromMap(Map<String, dynamic> map) {
    return VKNewsfeedItemWallpostFeedback(
      type: VKNewsfeedItemWallpostFeedbackType(map['type']),
      question: map['question'] as String,
      answers: map['answers']
          ?.map((item) => VKNewsfeedItemWallpostFeedbackAnswer.fromMap(item)),
      starsCount: map['stars_count'] as int,
      gratitude: map['gratitude'] as String,
    );
  }
}
