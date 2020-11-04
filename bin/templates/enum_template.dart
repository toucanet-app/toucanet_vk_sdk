import 'package:meta/meta.dart';

import '../helpers/converters.dart';

const enumTemplateString = '''
/// %description%.
class %className% {
  final %type% value;

  const %className%._(this.value);

  factory %className%(value) {
    if (!values.contains(value)) return null;

    return %className%._(value);
  }

  %enums%

  static List get values => const [%values%];

  @override
  String toString() => '\$value';
}
''';

class EnumTemplate {
  final String name;
  final Map<String, dynamic> object;

  String type = '';
  String description = '';

  final values = <String, dynamic>{};

  EnumTemplate({@required this.name, @required this.object}) {
    if (!object.containsKey('enum')) {
      throw Exception();
    }

    description = object['description'] ?? '';

    if (object['type'] == 'integer' && !object.containsKey('enumNames')) {
      throw Exception();
    }

    type = Converters.schemaToDartType(object['type']);

    for (var i = 0; i < object['enum'].length; i++) {
      var enumName = object['enum'][i] is! num
          ? object['enum'][i]
          : object['enumNames'][i];
      enumName = enumName.replaceAll(' ', '_');
      enumName = Converters.snakeToCamelCase(enumName);

      values[enumName] = object['enum'][i];
    }
  }

  @override
  String toString() {
    final enums = <String>[];
    final array = <String>[];
    final className = Converters.snakeToPascalCase(name);

    values.forEach((key, value) {
      if (value is num) {
        array.add('$value');
        enums.add('static const $className $key = $className._($value);');
      }

      if (value is String) {
        if (className == 'LeadsCheckedResult') {
          key = key == 'true' ? 'checked' : 'notChecked';
        }

        array.add('\'$value\'');
        enums.add('static const $className $key = $className._(\'$value\');');
      }
    });

    return enumTemplateString
        .replaceAll('%type%', type)
        .replaceAll('%className%', className)
        .replaceAll('%description%', description)
        .replaceAll('%enums%', enums.join('\n\n  '))
        .replaceAll('%values%', array.join(', '));
  }
}
