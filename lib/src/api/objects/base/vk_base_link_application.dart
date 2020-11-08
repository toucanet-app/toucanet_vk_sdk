import 'vk_base_link_application_store.dart';

class VKBaseLinkApplication {
  /// Application Id.
  final double appId;

  final VKBaseLinkApplicationStore store;

  const VKBaseLinkApplication({
    this.appId,
    this.store,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'app_id': appId,
      'store': store?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBaseLinkApplication.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKBaseLinkApplication(
      appId: map['app_id'] as double,
      store: VKBaseLinkApplicationStore.fromMap(map['store']),
    );
  }
}
