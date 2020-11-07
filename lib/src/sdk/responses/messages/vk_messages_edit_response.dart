/// .
class VKMessagesEditResponse {
  final int value;

  const VKMessagesEditResponse._(this.value);

  factory VKMessagesEditResponse(value) {
    if (!values.contains(value)) return null;
    return VKMessagesEditResponse._(value);
  }

  static const VKMessagesEditResponse no = VKMessagesEditResponse._(0);

  static const VKMessagesEditResponse yes = VKMessagesEditResponse._(1);

  static List get values => const [0, 1];

  @override
  String toString() => '$value';
}
