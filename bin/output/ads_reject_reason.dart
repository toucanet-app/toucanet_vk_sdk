import 'ads_rules.dart';

class AdsRejectReason {
  /// Comment text.
  final String comment;

  final List<AdsRules> rules;

  const AdsRejectReason({
    this.comment,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': comment,
      'rules': rules?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory AdsRejectReason.fromMap(Map<String, dynamic> map) {
    return AdsRejectReason(
      comment: map['comment'] as String,
      rules: map['rules']?.map((item) => AdsRules.fromMap(item)),
    );
  }
}
