

class UtilsStatsSexAge {
  /// Age denotation.
  final String ageRange;

  ///  Views by female users.
  final int female;

  ///  Views by male users.
  final int male;

  const UtilsStatsSexAge({
    this.ageRange,
    this.female,
    this.male,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'age_range': ageRange,
      'female': female,
      'male': male,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory UtilsStatsSexAge.fromMap(Map<String, dynamic> map) {
    return UtilsStatsSexAge(
      ageRange: map['age_range'] as String,
      female: map['female'] as int,
      male: map['male'] as int,
    );
  }
}
