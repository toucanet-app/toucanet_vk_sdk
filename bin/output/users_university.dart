

class UsersUniversity {
  /// Chair ID.
  final int chair;

  /// Chair name.
  final String chairName;

  /// City ID.
  final int city;

  /// Country ID.
  final int country;

  /// Education form.
  final String educationForm;

  /// Education status.
  final String educationStatus;

  /// Faculty ID.
  final int faculty;

  /// Faculty name.
  final String facultyName;

  /// Graduation year.
  final int graduation;

  /// University ID.
  final int id;

  /// University name.
  final String name;

  const UsersUniversity({
    this.chair,
    this.chairName,
    this.city,
    this.country,
    this.educationForm,
    this.educationStatus,
    this.faculty,
    this.facultyName,
    this.graduation,
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chair': chair,
      'chair_name': chairName,
      'city': city,
      'country': country,
      'education_form': educationForm,
      'education_status': educationStatus,
      'faculty': faculty,
      'faculty_name': facultyName,
      'graduation': graduation,
      'id': id,
      'name': name,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory UsersUniversity.fromMap(Map<String, dynamic> map) {
    return UsersUniversity(
      chair: map['chair'] as int,
      chairName: map['chair_name'] as String,
      city: map['city'] as int,
      country: map['country'] as int,
      educationForm: map['education_form'] as String,
      educationStatus: map['education_status'] as String,
      faculty: map['faculty'] as int,
      facultyName: map['faculty_name'] as String,
      graduation: map['graduation'] as int,
      id: map['id'] as int,
      name: map['name'] as String,
    );
  }
}
