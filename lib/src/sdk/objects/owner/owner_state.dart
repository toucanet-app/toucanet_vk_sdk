class VKOwnerState {
  final int state;

  /// wiki text to describe user state.
  final String description;

  const VKOwnerState({
    this.state,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
      'description': description,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKOwnerState.fromMap(Map<String, dynamic> map) {
    return VKOwnerState(
      state: map['state'] as int,
      description: map['description'] as String,
    );
  }
}
