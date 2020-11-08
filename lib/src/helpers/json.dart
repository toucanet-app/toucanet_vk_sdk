import 'dart:convert';

import '../base/map_serializer.dart';

/// Thrown when JSON cannot be processing.
class JsonProcessingException implements Exception {}

/// Used by [Json.decode].
typedef _JsonDeserializer<T> = T Function(dynamic json);

/// JSON helper.
abstract class Json {
  static String encode<T extends MapSerializer>(T object) {
    try {
      return json.encode(object.toMap());
    } on Exception catch (_) {
      throw JsonProcessingException();
    }
  }

  static T decode<T>(String jsonString, _JsonDeserializer<T> jsonDeserializer) {
    try {
      final dynamic data = json.decode(jsonString);
      return jsonDeserializer(data);
    } on Exception catch (_) {
      throw JsonProcessingException();
    }
  }
}
