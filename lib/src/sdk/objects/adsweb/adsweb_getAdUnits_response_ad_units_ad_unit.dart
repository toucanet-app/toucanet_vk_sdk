import 'package:meta/meta.dart';

class VKAdswebGetAdUnitsResponseAdUnitsAdUnit {
  final int id;

  final int siteId;

  final String name;

  final dynamic params;

  const VKAdswebGetAdUnitsResponseAdUnitsAdUnit({
    @required this.id,
    @required this.siteId,
    this.name,
    this.params,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'site_id': siteId,
      'name': name,
      'params': params,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdswebGetAdUnitsResponseAdUnitsAdUnit.fromMap(
      Map<String, dynamic> map) {
    return VKAdswebGetAdUnitsResponseAdUnitsAdUnit(
      id: map['id'] as int,
      siteId: map['site_id'] as int,
      name: map['name'] as String,
      params: map['params'] as dynamic,
    );
  }
}
