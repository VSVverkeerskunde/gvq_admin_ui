@TestOn('vm')
import "package:test/test.dart";

import 'package:gvq_admin_ui/src/account/user.dart';

void main() {
  User user;

  setUp(() {
    user = new User(null, 'd@d.be', 'P4ssword', 'Doe', 'John', 'nl');
  });

  test('stores email', () {
    expect(user.email, 'd@d.be');
  });

  test('stores password', () {
    expect(user.password, 'P4ssword');
  });

  test('stores last name', () {
    expect(user.lastName, 'Doe');
  });

  test('stores first name', () {
    expect(user.firstName, 'John');
  });

  test('stores a language', () {
    expect(user.language, 'nl');
  });

  test('can be converted to json map', () {
    Map expectedMap = new Map();
    expectedMap['email'] = 'd@d.be';
    expectedMap['password'] = 'P4ssword';
    expectedMap['lastName'] = 'Doe';
    expectedMap['firstName'] = 'John';
    expectedMap['language'] = 'nl';

    expect(user.toJson(), expectedMap);
  });
}
