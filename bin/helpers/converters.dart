abstract class Converters {
  static String schemaToDartType(String type) {
    return const {
      'array': 'List',
      'integer': 'int',
      'boolean': 'bool',
      'number': 'double',
      'string': 'String',
      'object': 'Map<String, dynamic>',
    }[type];
  }

  static String validate(String name) {
    switch (name) {
      case 'class':
        return 'className';
      default:
        return name;
    }
  }

  static String snakeToCamelCase(String name) {
    return name
        .replaceAll('2fa', 'twoFa')
        .split('_')
        .map(validate)
        .reduce((n, p) => n + p[0].toUpperCase() + p.substring(1));
  }

  static String snakeToPascalCase(String name) {
    return name
        .replaceAll('2fa', 'TwoFa')
        .split('_')
        .map(validate)
        .fold('', (n, p) => n + p[0].toUpperCase() + p.substring(1));
  }

  static String parseRefName(String ref) {
    final offset = ref.indexOf('/definitions/') + 13;
    return ref.substring(offset);
  }
}