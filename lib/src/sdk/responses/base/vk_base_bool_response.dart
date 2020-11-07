/// .
class VKBaseBoolResponse {
  final int value;

  const VKBaseBoolResponse._(this.value);

  factory VKBaseBoolResponse(value) {
    if (!values.contains(value)) return null;
    return VKBaseBoolResponse._(value);
  }

  static const VKBaseBoolResponse no = VKBaseBoolResponse._(0);

  static const VKBaseBoolResponse yes = VKBaseBoolResponse._(1);

  static List get values => const [0, 1];

  @override
  String toString() => '$value';
}
