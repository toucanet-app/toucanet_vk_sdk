import '../base/base_bool_int.dart';

class VKLeadsComplete {
  /// Offer cost.
  final int cost;

  /// Offer limit.
  final int limit;

  /// Amount of spent votes.
  final int spent;

  final int success;

  /// Information whether test mode is enabled.
  final VKBaseBoolInt testMode;

  const VKLeadsComplete({
    this.cost,
    this.limit,
    this.spent,
    this.success,
    this.testMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cost': cost,
      'limit': limit,
      'spent': spent,
      'success': success,
      'test_mode': testMode?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKLeadsComplete.fromMap(Map<String, dynamic> map) {
    return VKLeadsComplete(
      cost: map['cost'] as int,
      limit: map['limit'] as int,
      spent: map['spent'] as int,
      success: map['success'] as int,
      testMode: VKBaseBoolInt(map['test_mode']),
    );
  }
}
