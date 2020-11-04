import 'dart:io';
import 'dart:convert';
import 'package:path/path.dart' as path;

import 'helpers/converters.dart';
import 'templates/enum_template.dart';
import 'templates/object_template.dart';

const excludedObjects = [];

void main(List<String> arguments) async {
  final currentDirectory = Directory.current.path;
  final objectsPath = path.join(currentDirectory, 'bin/schemes/objects.json');

  final objectsString = await File(objectsPath).readAsString();
  final objects = json.decode(objectsString) as Map<String, dynamic>;

  final definitions = objects['definitions'];
  if (definitions == null || definitions is! Map) throw Exception();

  final skipped = <String>{};
  definitions.forEach((name, object) {
    try {
      if (excludedObjects.contains(name)) throw Exception();

      final file = File('bin/output/${name}.dart');

      switch (object['type']) {
        case 'object':
          file.createSync(recursive: true);
          file.writeAsString(
            ObjectTemplate(
              name: name,
              object: object,
              definitions: definitions,
            ).toString(),
            mode: FileMode.writeOnly,
          );
          break;
        case 'string':
        case 'integer':
          file.createSync(recursive: true);
          file.writeAsString(
            EnumTemplate(name: name, object: object).toString(),
            mode: FileMode.writeOnly,
          );
          break;
        case 'boolean':
          break;
        default:
          if ((object as Map).containsKey('\$ref')) {
            final refName = Converters.parseRefName(object['\$ref']);

            file.createSync(recursive: true);
            file.writeAsString(
              ObjectTemplate(
                name: name,
                object: definitions[refName],
                definitions: definitions,
              ).toString(),
              mode: FileMode.writeOnly,
            );

            break;
          }
          throw Exception();
      }
    } on Exception catch (_) {
      skipped.add(name);
    }
  });

  print('all: ${definitions.keys.length}; skipped: ${skipped.length}');
  print(skipped);
}
