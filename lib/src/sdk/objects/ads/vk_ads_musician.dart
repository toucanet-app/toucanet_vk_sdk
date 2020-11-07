import 'package:meta/meta.dart';

class VKAdsMusician {
  /// Targeting music artist ID.
  final int id;

  /// Music artist name.
  final String name;

  const VKAdsMusician({
    @required this.id,
    @required this.name,
  }) : assert(id >= 1);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsMusician.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsMusician(
      id: map['id'] as int,
      name: map['name'] as String,
    );
  }
}
