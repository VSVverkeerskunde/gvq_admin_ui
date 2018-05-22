import 'package:gvq_admin_ui/src/question/answer.dart';
import 'package:gvq_admin_ui/src/question/category.dart';
import "package:test/test.dart";

import 'package:gvq_admin_ui/src/question/question.dart';

void main() {
  Question question;

  setUp(() {
    question = new Question(
        'fr',
        2018,
        new Category(
            '1289d4b5-e88e-4b3c-9223-eb2c7c49f4d0', 'EHBO/Ongeval/Verzekering'),
        'La voiture devant vous roule très lentement. Pouvez-vous la dépasser par la gauche?',
        new Uri.dataFromString(
            'https://vragendatabank.s3-eu-west-1.amazonaws.com/styles/verkeersquiz_430x1/s3/01.07.jpg?itok=6-35lj-4'),
        [
          new Answer('Oui, mais uniquement en agglomération.', false),
          new Answer(
              'Non, on ne peut jamais rouler sur une voie ferrée.', false),
          new Answer('Non.', true),
        ],
        'La voie publique située entre les deux lignes blanches continues est un site spécial franchissable.');
  });
}
