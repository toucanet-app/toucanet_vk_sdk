import '../../objects/vk_objects.dart';

class VKAdsGetRejectionReasonResponse {
  /// Comment text.
  final String comment;

  final List<VKAdsRules> rules;

  const VKAdsGetRejectionReasonResponse({
    this.comment,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': comment,
      'rules': rules
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsGetRejectionReasonResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsGetRejectionReasonResponse(
      comment: map['comment'] as String,
      rules: map['rules']
          ?.map<VKAdsRules>(
            (item) => VKAdsRules.fromMap(item),
          )
          ?.toList(),
    );
  }
}
