@TestOn('vm')

import 'package:test/test.dart';

import 'package:gvq_admin_ui/src/question/category.dart';

void main() {
  Category category;

  setUp(() {
    category = new Category(
        '1289d4b5-e88e-4b3c-9223-eb2c7c49f4d0', 'EHBO/Ongeval/Verzekering');
  });

  test('stores an id', () {
    expect(category.id, '1289d4b5-e88e-4b3c-9223-eb2c7c49f4d0');
  });

  test('stores a name', () {
    expect(category.name, 'EHBO/Ongeval/Verzekering');
  });

  test('can be converted to json map', () {
    Map expectedMap = new Map();
    expectedMap['id'] = '1289d4b5-e88e-4b3c-9223-eb2c7c49f4d0';
    expectedMap['name'] = 'EHBO/Ongeval/Verzekering';

    expect(category.toJson(), expectedMap);
  });
}
