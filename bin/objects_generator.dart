import 'dart:io';
import 'dart:convert';

import 'package:path/path.dart' as path;

String snakeToCamelCase(String name) {
  return name
      .split('_')
      .reduce((n, p) => n + p[0].toUpperCase() + p.substring(1));
}

String snakeToPascalCase(String name) {
  return name
      .split('_')
      .fold('', (n, p) => n + p[0].toUpperCase() + p.substring(1));
}

void main(List<String> arguments) async {
  final currentDirectory = Directory.current.path;
  final objectsPath = path.join(currentDirectory, 'bin/docs/objects.json');

  final objectsString = await File(objectsPath).readAsString();
  final objects = json.decode(objectsString) as Map<String, dynamic>;

  final definitions = objects['definitions'];
  if (definitions == null || definitions is! Map) throw Exception();

  final types = <String>{};
  definitions.forEach((name, object) {
    object['properties']?.forEach((name, property) {
      if (property['type'] is String) types.add(property['type']);
    });
  });

  print(types);
}
