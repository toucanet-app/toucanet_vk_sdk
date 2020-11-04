class BaseLinkApplicationStore {
  /// Store Id.
  final double id;

  /// Store name.
  final String name;

  const BaseLinkApplicationStore({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory BaseLinkApplicationStore.fromMap(Map<String, dynamic> map) {
    return BaseLinkApplicationStore(
      id: map['id'] as double,
      name: map['name'] as String,
    );
  }
}
