class LeadsLeadDays {
  /// Completed offers number.
  final int completed;

  /// Impressions number.
  final int impressions;

  /// Amount of spent votes.
  final int spent;

  /// Started offers number.
  final int started;

  const LeadsLeadDays({
    this.completed,
    this.impressions,
    this.spent,
    this.started,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completed': completed,
      'impressions': impressions,
      'spent': spent,
      'started': started,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory LeadsLeadDays.fromMap(Map<String, dynamic> map) {
    return LeadsLeadDays(
      completed: map['completed'] as int,
      impressions: map['impressions'] as int,
      spent: map['spent'] as int,
      started: map['started'] as int,
    );
  }
}
