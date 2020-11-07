import 'package:meta/meta.dart';

class VKAdswebGetSitesResponseSitesSite {
  final int id;

  final String statusUser;

  final String statusModer;

  final String domains;

  const VKAdswebGetSitesResponseSitesSite({
    @required this.id,
    this.statusUser,
    this.statusModer,
    this.domains,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'status_user': statusUser,
      'status_moder': statusModer,
      'domains': domains,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdswebGetSitesResponseSitesSite.fromMap(Map<String, dynamic> map) {
    return VKAdswebGetSitesResponseSitesSite(
      id: map['id'] as int,
      statusUser: map['status_user'] as String,
      statusModer: map['status_moder'] as String,
      domains: map['domains'] as String,
    );
  }
}
