class VKGroupsAddCallbackServerResponse {
  final int serverId;

  const VKGroupsAddCallbackServerResponse({
    this.serverId,
  }) : assert(serverId >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'server_id': serverId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsAddCallbackServerResponse.fromMap(Map<String, dynamic> map) {
    return VKGroupsAddCallbackServerResponse(
      serverId: map['server_id'] as int,
    );
  }
}
