import 'package:meta/meta.dart';

class VKAppsScope {
  /// Scope name.
  final String name;

  /// Scope title.
  final String title;

  const VKAppsScope({
    @required this.name,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'title': title,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAppsScope.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAppsScope(
      name: map['name'] as String,
      title: map['title'] as String,
    );
  }
}
