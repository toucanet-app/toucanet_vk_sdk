import 'package:test/test.dart';

import 'package:toucanet_vk_sdk/src/helpers/http.dart';

void main() {
  group('Http.explodeQuery', () {
    test('empty query', () {
      expect(Http.explodeQuery(''), {});
    });

    test('invalid parameter', () {
      expect(Http.explodeQuery('test'), {});
    });

    test('single parameter', () {
      expect(Http.explodeQuery('key=test'), {'key': 'test'});
    });

    test('many parameters', () {
      expect(
        Http.explodeQuery('key1=test1&key2=test2'),
        {'key1': 'test1', 'key2': 'test2'},
      );
    });
  });
  group('Http.rtrimSlashes', () {
    test('slash delete', () {
      expect(Http.rtrimSlashes('https://vk.com/'), 'https://vk.com');
    });
  });
}
