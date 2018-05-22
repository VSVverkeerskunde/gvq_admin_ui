@TestOn('browser')

import 'package:test/test.dart';

import 'package:gvq_admin_ui/src/question/question_service.dart';

void main() {
  QuestionService questionService;

  setUp(() {
    questionService = new QuestionService();
  });
}
