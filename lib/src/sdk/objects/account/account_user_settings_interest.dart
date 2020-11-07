import 'package:meta/meta.dart';

class VKAccountUserSettingsInterest {
  final String title;

  final String value;

  const VKAccountUserSettingsInterest({
    @required this.title,
    @required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'value': value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAccountUserSettingsInterest.fromMap(Map<String, dynamic> map) {
    return VKAccountUserSettingsInterest(
      title: map['title'] as String,
      value: map['value'] as String,
    );
  }
}
