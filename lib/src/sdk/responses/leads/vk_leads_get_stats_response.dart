import '../../objects/vk_objects.dart';

class VKLeadsGetStatsResponse {
  /// Completed offers number.
  final int completed;

  /// Offer cost.
  final int cost;

  final VKLeadsLeadDays days;

  /// Impressions number.
  final int impressions;

  /// Lead limit.
  final int limit;

  /// Amount of spent votes.
  final int spent;

  /// Started offers number.
  final int started;

  const VKLeadsGetStatsResponse({
    this.completed,
    this.cost,
    this.days,
    this.impressions,
    this.limit,
    this.spent,
    this.started,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completed': completed,
      'cost': cost,
      'days': days?.toMap(),
      'impressions': impressions,
      'limit': limit,
      'spent': spent,
      'started': started,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKLeadsGetStatsResponse.fromMap(Map<String, dynamic> map) {
    return VKLeadsGetStatsResponse(
      completed: map['completed'] as int,
      cost: map['cost'] as int,
      days: VKLeadsLeadDays.fromMap(map['days']),
      impressions: map['impressions'] as int,
      limit: map['limit'] as int,
      spent: map['spent'] as int,
      started: map['started'] as int,
    );
  }
}
