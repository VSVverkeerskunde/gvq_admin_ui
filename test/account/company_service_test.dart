@TestOn('browser')

import 'package:test/test.dart';

import 'package:gvq_admin_ui/src/account/company_service.dart';

void main() {
  CompanyService companyService;

  setUp(() {
    companyService = new CompanyService();
  });
}
