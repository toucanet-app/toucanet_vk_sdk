/// .
class VKGroupsIsMemberResponse {
  final int value;

  const VKGroupsIsMemberResponse._(this.value);

  factory VKGroupsIsMemberResponse(value) {
    if (!values.contains(value)) return null;
    return VKGroupsIsMemberResponse._(value);
  }

  static const VKGroupsIsMemberResponse no = VKGroupsIsMemberResponse._(0);

  static const VKGroupsIsMemberResponse yes = VKGroupsIsMemberResponse._(1);

  static List get values => const [0, 1];

  @override
  String toString() => '$value';
}
