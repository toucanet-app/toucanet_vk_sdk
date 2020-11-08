class VKLinkTargetObject {
  /// Object type.
  final String type;

  /// Owner ID.
  final int ownerId;

  /// Item ID.
  final int itemId;

  const VKLinkTargetObject({
    this.type,
    this.ownerId,
    this.itemId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'owner_id': ownerId,
      'item_id': itemId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKLinkTargetObject.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKLinkTargetObject(
      type: map['type'] as String,
      ownerId: map['owner_id'] as int,
      itemId: map['item_id'] as int,
    );
  }
}
