import 'package:meta/meta.dart';

class AccountUserSettingsInterest {
  final String title;

  final String value;

  const AccountUserSettingsInterest({
    @required this.title,
    @required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'value': value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory AccountUserSettingsInterest.fromMap(Map<String, dynamic> map) {
    return AccountUserSettingsInterest(
      title: map['title'] as String,
      value: map['value'] as String,
    );
  }
}
