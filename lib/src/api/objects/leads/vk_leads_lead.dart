import 'vk_leads_lead_days.dart';

class VKLeadsLead {
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

  const VKLeadsLead({
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

  factory VKLeadsLead.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKLeadsLead(
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
