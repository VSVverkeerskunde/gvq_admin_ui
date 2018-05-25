@TestOn('vm')

import "package:test/test.dart";

import 'package:gvq_admin_ui/src/question/answer.dart';

void main() {
  Answer answer;

  setUp(() {
    answer = new Answer('Oui, mais uniquement en agglomération.', true);
  });

  test('stores text', () {
    expect(answer.text, 'Oui, mais uniquement en agglomération.');
  });

  test('stores a correct state', () {
    expect(answer.correct, true);
  });

  test('can be converted to json map', () {
    Map expectedMap = new Map();
    expectedMap['text'] = 'Oui, mais uniquement en agglomération.';
    expectedMap['correct'] = true;

    expect(answer.toJson(), expectedMap);
  });
}
