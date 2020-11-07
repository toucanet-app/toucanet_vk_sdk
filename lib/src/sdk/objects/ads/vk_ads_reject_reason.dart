import 'vk_ads_rules.dart';

class VKAdsRejectReason {
  /// Comment text.
  final String comment;

  final List<VKAdsRules> rules;

  const VKAdsRejectReason({
    this.comment,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': comment,
      'rules': rules?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsRejectReason.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsRejectReason(
      comment: map['comment'] as String,
      rules: map['rules']?.map((item) => VKAdsRules.fromMap(item))?.toList(),
    );
  }
}
