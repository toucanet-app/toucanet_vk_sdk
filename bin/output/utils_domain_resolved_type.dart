/// Object type.
class UtilsDomainResolvedType {
  final String value;

  const UtilsDomainResolvedType._(this.value);

  factory UtilsDomainResolvedType(value) {
    if (!values.contains(value)) return null;

    return UtilsDomainResolvedType._(value);
  }

  static const UtilsDomainResolvedType user = UtilsDomainResolvedType._('user');

  static const UtilsDomainResolvedType group = UtilsDomainResolvedType._('group');

  static const UtilsDomainResolvedType application = UtilsDomainResolvedType._('application');

  static const UtilsDomainResolvedType page = UtilsDomainResolvedType._('page');

  static const UtilsDomainResolvedType vkApp = UtilsDomainResolvedType._('vk_app');

  static List get values => const ['user', 'group', 'application', 'page', 'vk_app'];

  @override
  String toString() => '$value';
}
