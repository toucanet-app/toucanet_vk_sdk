import 'package:meta/meta.dart';

class VKMarketSection {
  /// Section ID.
  final int id;

  /// Section name.
  final String name;

  const VKMarketSection({
    @required this.id,
    @required this.name,
  }) : assert(id >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMarketSection.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMarketSection(
      id: map['id'] as int,
      name: map['name'] as String,
    );
  }
}
