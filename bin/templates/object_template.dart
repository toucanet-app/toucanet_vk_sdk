import 'package:meta/meta.dart';

import '../helpers/converters.dart';
import 'property_template.dart';

const objectTemplateString = '''
%imports%

class %className% {
  %fields%

  const %className%({
    %parameters%,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      %toMapParameters%,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory %className%.fromMap(Map<String, dynamic> map) {
    return %className%(
      %fromMapParameters%,
    );
  }
}
''';

//TODO: %asserts%

class ObjectTemplate {
  final String name;
  final Map<String, dynamic> object;
  final Map<String, dynamic> definitions;

  final List<String> requireds = [];
  final Set<PropertyTemplate> properties = {};

  ObjectTemplate({
    @required this.name,
    @required this.object,
    @required this.definitions,
  }) {
    object['required']?.forEach(requireds.add);

    if (object.containsKey('oneOf')) {
      throw Exception();
    }

    if (object.containsKey('allOf')) {
      object['allOf'].forEach((item) {
        if (item.containsKey('\$ref')) {
          final refName = Converters.parseRefName(item['\$ref']);

          final refTemplate = ObjectTemplate(
            name: refName,
            object: definitions[refName],
            definitions: definitions,
          );

          requireds.addAll(refTemplate.requireds);
          properties.addAll(refTemplate.properties);
        }

        if (item.containsKey('properties')) {
          item['properties'].forEach((property, field) {
            properties.add(PropertyTemplate(
              property: property,
              data: field,
              definitions: definitions,
            ));
          });
        }
      });

      return;
    }

    if (!object.containsKey('properties')) {
      throw Exception();
    }

    if (object.containsKey('properties')) {
      object['properties'].forEach((property, field) {
        properties.add(PropertyTemplate(
          property: property,
          data: field,
          definitions: definitions,
        ));
      });
    }
  }

  @override
  String toString() {
    final imports = <String>{};
    properties.forEach((property) => imports.addAll(property.imports));

    if (requireds.isNotEmpty) {
      imports.add('package:meta/meta');
    }

    final parameters = properties.map((field) {
      if (!requireds.contains(field.property)) {
        return 'this.${field.name}';
      } else {
        return '@required this.${field.name}';
      }
    });

    final fromMapParameters = properties.map((property) {
      if (property.primitive) {
        return '${property.name}: map[\'${property.property}\'] as ${property.type}';
      } else {
        if (definitions[property.refType].containsKey('enum')) {
          if (property.isList) {
            return '${property.name}: map[\'${property.property}\']?.map((item) => ${property.formatedRefName}(item))';
          }

          return '${property.name}: ${property.type}(map[\'${property.property}\'])';
        } else {
          if (property.isList) {
            return '${property.name}: map[\'${property.property}\']?.map((item) => ${property.formatedRefName}.fromMap(item))';
          }

          return '${property.name}: ${property.type}.fromMap(map[\'${property.property}\'])';
        }
      }
    });

    final toStringParameters = properties.map((property) {
      return '${property.name}: \${${property.name}}';
    });

    final toMapParameters = properties.map((property) {
      if (property.primitive) {
        return '\'${property.property}\': ${property.name}';
      } else {
        if (!definitions[property.refType].containsKey('enum')) {
          if (property.isList) {
            return '\'${property.property}\': ${property.name}?.map((item) => item?.toMap())';
          }

          return '\'${property.property}\': ${property.name}?.toMap()';
        } else {
          if (property.isList) {
            return '\'${property.property}\': ${property.name}?.map((item) => item?.value)';
          }

          return '\'${property.property}\': ${property.name}?.value';
        }
      }
    });

    return objectTemplateString
        .replaceAll('%fields%', properties.join('\n\n  '))
        .replaceAll('%parameters%', parameters.join(',\n    '))
        .replaceAll('%className%', Converters.snakeToPascalCase(name))
        .replaceAll('%imports%', imports.map(_generateImport).join('\n'))
        .replaceAll('%toMapParameters%', toMapParameters.join(',\n      '))
        .replaceAll('%fromMapParameters%', fromMapParameters.join(',\n      '))
        .replaceAll('%toStringParameters%', toStringParameters.join(', '));
  }

  String _generateImport(String file) => 'import \'$file.dart\';';
}
