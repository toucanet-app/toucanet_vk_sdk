/// Object type.
class VKUtilsDomainResolvedType {
  final String value;

  const VKUtilsDomainResolvedType._(this.value);

  factory VKUtilsDomainResolvedType(value) {
    if (!values.contains(value)) return null;
    return VKUtilsDomainResolvedType._(value);
  }

  static const VKUtilsDomainResolvedType application =
      VKUtilsDomainResolvedType._('application');

  static const VKUtilsDomainResolvedType group =
      VKUtilsDomainResolvedType._('group');

  static const VKUtilsDomainResolvedType page =
      VKUtilsDomainResolvedType._('page');

  static const VKUtilsDomainResolvedType user =
      VKUtilsDomainResolvedType._('user');

  static const VKUtilsDomainResolvedType vkApp =
      VKUtilsDomainResolvedType._('vk_app');

  static List get values =>
      const ['user', 'group', 'application', 'page', 'vk_app'];

  @override
  String toString() => '$value';
}
