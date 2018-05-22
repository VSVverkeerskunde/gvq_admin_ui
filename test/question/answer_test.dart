@TestOn('vm')

import "package:test/test.dart";

import 'package:gvq_admin_ui/src/question/answer.dart';

void main() {
  Answer answer;

  setUp(() {
    answer = new Answer('Oui, mais uniquement en agglomération.', false);
  });
}
