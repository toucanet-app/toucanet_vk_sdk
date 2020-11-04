import 'package:meta/meta.dart';

class StatsSexAge {
  /// Visitors number.
  final int count;

  /// Sex/age value.
  final String value;

  final int reach;

  final int reachSubscribers;

  final int countSubscribers;

  const StatsSexAge({
    this.count,
    @required this.value,
    this.reach,
    this.reachSubscribers,
    this.countSubscribers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'value': value,
      'reach': reach,
      'reach_subscribers': reachSubscribers,
      'count_subscribers': countSubscribers,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory StatsSexAge.fromMap(Map<String, dynamic> map) {
    return StatsSexAge(
      count: map['count'] as int,
      value: map['value'] as String,
      reach: map['reach'] as int,
      reachSubscribers: map['reach_subscribers'] as int,
      countSubscribers: map['count_subscribers'] as int,
    );
  }
}
