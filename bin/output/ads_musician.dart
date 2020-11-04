import 'package:meta/meta.dart';

class AdsMusician {
  /// Targeting music artist ID.
  final int id;

  /// Music artist name.
  final String name;

  const AdsMusician({
    @required this.id,
    @required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory AdsMusician.fromMap(Map<String, dynamic> map) {
    return AdsMusician(
      id: map['id'] as int,
      name: map['name'] as String,
    );
  }
}
