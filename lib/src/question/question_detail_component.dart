import 'package:angular/angular.dart';
import 'package:gvq_admin_ui/src/question/answer.dart';
import 'package:gvq_admin_ui/src/question/question.dart';

@Component(
    selector: 'question-detail',
    templateUrl: 'question_detail_component.html',
    directives: [coreDirectives]
)

class QuestionDetailComponent {
  Question question = new Question('fr', 2017, 'Dit is de vraag?', [
    new Answer('Dit is antwoord 1', false),
    new Answer('Dit is antwoord 2', true),
    new Answer('Dit is antwoord 3', false)
  ]);
}
