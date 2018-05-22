@TestOn('browser')

import 'package:test/test.dart';

import 'package:gvq_admin_ui/src/question/category_service.dart';

void main() {
  CategoryService categoryService;

  setUp(() {
    categoryService = new CategoryService();
  });
}
