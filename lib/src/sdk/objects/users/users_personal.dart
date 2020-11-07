class VKUsersPersonal {
  /// User's views on alcohol.
  final int alcohol;

  /// User's inspired by.
  final String inspiredBy;

  /// The list of User's languages.
  final List<String> langs;

  /// User's personal priority in life.
  final int lifeMain;

  /// User's personal priority in people.
  final int peopleMain;

  /// User's political views.
  final int political;

  /// User's religion.
  final String religion;

  /// User's religion id.
  final int religionId;

  /// User's views on smoking.
  final int smoking;

  const VKUsersPersonal({
    this.alcohol,
    this.inspiredBy,
    this.langs,
    this.lifeMain,
    this.peopleMain,
    this.political,
    this.religion,
    this.religionId,
    this.smoking,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alcohol': alcohol,
      'inspired_by': inspiredBy,
      'langs': langs,
      'life_main': lifeMain,
      'people_main': peopleMain,
      'political': political,
      'religion': religion,
      'religion_id': religionId,
      'smoking': smoking,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKUsersPersonal.fromMap(Map<String, dynamic> map) {
    return VKUsersPersonal(
      alcohol: map['alcohol'] as int,
      inspiredBy: map['inspired_by'] as String,
      langs: map['langs'] as List<String>,
      lifeMain: map['life_main'] as int,
      peopleMain: map['people_main'] as int,
      political: map['political'] as int,
      religion: map['religion'] as String,
      religionId: map['religion_id'] as int,
      smoking: map['smoking'] as int,
    );
  }
}
