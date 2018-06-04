@TestOn('vm')

import "package:test/test.dart";

import 'package:gvq_admin_ui/src/account/translated_alias.dart';

void main() {
  TranslatedAlias translatedAlias;

  setUp(() {
    translatedAlias = new TranslatedAlias(null, 'company-nl', 'nl');
  });

  test('stores alias', () {
    expect(translatedAlias.alias, 'company-nl');
  });

  test('stores a language', () {
    expect(translatedAlias.language, 'nl');
  });

  test('can be converted to json map', () {
    Map expectedMap = new Map();
    expectedMap['alias'] = 'company-nl';
    expectedMap['language'] = 'nl';

    expect(translatedAlias.toJson(), expectedMap);
  });
}
