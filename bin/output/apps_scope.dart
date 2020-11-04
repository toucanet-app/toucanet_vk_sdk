import 'package:meta/meta.dart';

class AppsScope {
  /// Scope name.
  final String name;

  /// Scope title.
  final String title;

  const AppsScope({
    @required this.name,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'title': title,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory AppsScope.fromMap(Map<String, dynamic> map) {
    return AppsScope(
      name: map['name'] as String,
      title: map['title'] as String,
    );
  }
}
