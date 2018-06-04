@TestOn('vm')
import "package:test/test.dart";

import 'package:gvq_admin_ui/src/account/company.dart';
import 'package:gvq_admin_ui/src/account/translated_alias.dart';
import 'package:gvq_admin_ui/src/account/user.dart';

void main() {
  Company company;

  setUp(() {
    company = new Company(
        null,
      'Company',
      49,
      [
        new TranslatedAlias(null, 'company-nl', 'nl'),
        new TranslatedAlias(null, 'company-fr', 'fr')
      ],
      new User(null, 'd@d.be', 'P4ssword', 'Doe', 'John', 'nl')
    );
  });

  test('stores name', () {
    expect(company.name, 'Company');
  });

  test('stores number of employees', () {
    expect(company.numEmployees, 49);
  });

  test('it can convert to json', () {
    Map companyMap = company.toJson();

    expect(companyMap != null, true);
  });
}
