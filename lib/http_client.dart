import 'dart:async';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'src/base/transport_client.dart';

class HttpClient implements TransportClient {
  const HttpClient();

  @override
  Future<TransportClientResponse> get(
    String url, [
    Map<String, String> parameters = const {},
  ]) =>
      _fetch(url, body: null);

  @override
  Future<TransportClientResponse> post(
    String url, [
    Map<String, String> body = const {},
  ]) =>
      _fetch(url, body: body);

  Future<HttpClientResponse> _fetch(String url,
      {Map<String, String> body}) async {
    http.Response response;

    try {
      final request =
          (body == null) ? http.get(url) : http.post(url, body: body);

      response = await request;
    } on SocketException catch (error) {
      throw TransportClientException(error.message);
    } on HttpException catch (error) {
      throw TransportClientException(error.message);
    } on TimeoutException catch (error) {
      throw TransportClientException(error.message);
    }

    return HttpClientResponse(
      response.statusCode,
      response.body,
      response.headers,
    );
  }
}

class HttpClientResponse implements TransportClientResponse {
  @override
  final int code;

  @override
  final String body;

  @override
  final Map<String, String> headers;

  HttpClientResponse(this.code, this.body, [this.headers = const {}]);
}
