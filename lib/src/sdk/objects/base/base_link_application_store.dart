class VKBaseLinkApplicationStore {
  /// Store Id.
  final double id;

  /// Store name.
  final String name;

  const VKBaseLinkApplicationStore({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBaseLinkApplicationStore.fromMap(Map<String, dynamic> map) {
    return VKBaseLinkApplicationStore(
      id: map['id'] as double,
      name: map['name'] as String,
    );
  }
}
