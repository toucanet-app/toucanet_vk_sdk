import '../helpers/converters.dart';

class PropertyTemplate {
  String type;
  String asserts;

  String refType;
  String refDescription;
  String formatedRefName;

  bool isList = false;
  bool primitive = true;

  final String property;
  final Map<String, dynamic> data;
  final Map<String, dynamic> definitions;

  final Set<String> imports = <String>{};

  PropertyTemplate({this.property, this.data, this.definitions}) {
    if (data.containsKey('\$ref')) {
      final refName = Converters.parseRefName(data['\$ref']);

      if (!definitions.containsKey(refName)) {
        type = 'dynamic';
        refType = 'dynamic';
        return;
      }

      if (definitions[refName]['type'] == 'boolean') {
        type = 'bool';
        refType = 'bool';
        refDescription = definitions[refName]['description'];
        return;
      }

      if (refName.isNotEmpty) {
        imports.add(refName);
        primitive = false;
        refType = refName;
        type = Converters.snakeToPascalCase(refName);
        formatedRefName = type;
        return;
      }
    }

    if (!data.containsKey('type')) {
      throw Exception('Unknown object field format $property.');
    }

    if (data['type'] == 'array') {
      isList = true;

      if (data.containsKey('items')) {
        if (data['items'].containsKey('type')) {
          final listType = Converters.schemaToDartType(data['items']['type']);
          type = 'List<$listType>';
          return;
        }

        if (data['items'].containsKey('\$ref')) {
          final ref = data['items']['\$ref'] as String;

          if (ref.contains('/definitions/')) {
            final refName = Converters.parseRefName(ref);

            if (!definitions.containsKey(refName)) {
              type = 'List<dynamic>';
              return;
            }

            formatedRefName = Converters.snakeToPascalCase(refName);

            imports.add(refName);

            primitive = false;
            refType = refName;

            type = 'List<$formatedRefName>';
            return;
          }

          final listType = Converters.schemaToDartType(data['items']['type']);
          type = 'List<$listType>';
          return;
        }
      }

      throw Exception('Unknown object field format ($name).');
    }

    // fix for type: [integer, string]
    if (data['type'] is List) {
      type = 'String';
      return;
    }

    type = Converters.schemaToDartType(data['type']);
  }

  String get name {
    if (property == 'new') return 'newCount';
    return Converters.snakeToCamelCase(property);
  }

  String get comment => description == null ? '' : '/// ${description}';

  String get description {
    if (data.containsKey('description')) return '${data['description']}.';

    if (data.containsKey('items') && data['items']['description'] != null) {
      return 'The list of ${data['items']['description']}.';
    }

    return refDescription;
  }

  @override
  String toString() =>
      comment.isEmpty ? 'final $type $name;' : '$comment\n  final $type $name;';

  @override
  int get hashCode => property.hashCode;

  @override
  bool operator ==(o) => o is PropertyTemplate && property == o.property;
}
