class VKGroupsAddCallbackServerResponse {
  final int serverId;

  const VKGroupsAddCallbackServerResponse({
    this.serverId,
  }) : assert(serverId == null || serverId >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'server_id': serverId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsAddCallbackServerResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKGroupsAddCallbackServerResponse(
      serverId: map['server_id'] as int,
    );
  }
}
