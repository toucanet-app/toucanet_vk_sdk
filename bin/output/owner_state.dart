class OwnerState {
  final int state;

  /// wiki text to describe user state.
  final String description;

  const OwnerState({
    this.state,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
      'description': description,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory OwnerState.fromMap(Map<String, dynamic> map) {
    return OwnerState(
      state: map['state'] as int,
      description: map['description'] as String,
    );
  }
}
