import 'base_link_application_store.dart';

class BaseLinkApplication {
  /// Application Id.
  final double appId;

  final BaseLinkApplicationStore store;

  const BaseLinkApplication({
    this.appId,
    this.store,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'app_id': appId,
      'store': store?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory BaseLinkApplication.fromMap(Map<String, dynamic> map) {
    return BaseLinkApplication(
      appId: map['app_id'] as double,
      store: BaseLinkApplicationStore.fromMap(map['store']),
    );
  }
}
