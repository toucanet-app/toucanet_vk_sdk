class VKDatabaseGetSchoolClassesResponse {
  final List<List> databaseGetSchoolClassesResponse;

  const VKDatabaseGetSchoolClassesResponse({
    this.databaseGetSchoolClassesResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database_getSchoolClasses_response': databaseGetSchoolClassesResponse,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKDatabaseGetSchoolClassesResponse.fromMap(Map<String, dynamic> map) {
    return VKDatabaseGetSchoolClassesResponse(
      databaseGetSchoolClassesResponse:
          map['database_getSchoolClasses_response'] as List<List>,
    );
  }
}
