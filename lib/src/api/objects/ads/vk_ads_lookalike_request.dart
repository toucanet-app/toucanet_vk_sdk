import 'package:meta/meta.dart';

import 'vk_ads_lookalike_request_save_audience_level.dart';

class VKAdsLookalikeRequest {
  /// Lookalike request ID.
  final int id;

  /// Lookalike request create time, as Unixtime.
  final int createTime;

  /// Lookalike request update time, as Unixtime.
  final int updateTime;

  /// Time by which lookalike request would be deleted, as Unixtime.
  final int scheduledDeleteTime;

  /// Lookalike request status.
  final String status;

  /// Lookalike request source type.
  final String sourceType;

  /// Retargeting group id, which was used as lookalike seed.
  final int sourceRetargetingGroupId;

  /// Lookalike request seed name (retargeting group name).
  final String sourceName;

  /// Lookalike request seed audience size.
  final int audienceCount;

  final List<VKAdsLookalikeRequestSaveAudienceLevel> saveAudienceLevels;

  const VKAdsLookalikeRequest({
    @required this.id,
    @required this.createTime,
    @required this.updateTime,
    this.scheduledDeleteTime,
    @required this.status,
    @required this.sourceType,
    this.sourceRetargetingGroupId,
    this.sourceName,
    this.audienceCount,
    this.saveAudienceLevels,
  })  : assert(id >= 1),
        assert(
            sourceRetargetingGroupId == null || sourceRetargetingGroupId >= 1),
        assert(audienceCount == null || audienceCount >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'create_time': createTime,
      'update_time': updateTime,
      'scheduled_delete_time': scheduledDeleteTime,
      'status': status,
      'source_type': sourceType,
      'source_retargeting_group_id': sourceRetargetingGroupId,
      'source_name': sourceName,
      'audience_count': audienceCount,
      'save_audience_levels': saveAudienceLevels
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsLookalikeRequest.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsLookalikeRequest(
      id: map['id'] as int,
      createTime: map['create_time'] as int,
      updateTime: map['update_time'] as int,
      scheduledDeleteTime: map['scheduled_delete_time'] as int,
      status: map['status'] as String,
      sourceType: map['source_type'] as String,
      sourceRetargetingGroupId: map['source_retargeting_group_id'] as int,
      sourceName: map['source_name'] as String,
      audienceCount: map['audience_count'] as int,
      saveAudienceLevels: map['save_audience_levels']
          ?.map<VKAdsLookalikeRequestSaveAudienceLevel>(
            (item) => VKAdsLookalikeRequestSaveAudienceLevel.fromMap(item),
          )
          ?.toList(),
    );
  }
}
