import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

import 'package:gvq_admin_ui/src/question/question.dart';
import 'package:gvq_admin_ui/src/question/question_service.dart';

@Component(
    selector: 'questions-list',
    templateUrl: 'questions_list_component.html',
    directives: [coreDirectives, formDirectives])

class QuestionsListComponent implements OnInit {
  List<Question> _questions;

  @override
  void ngOnInit() async {
    QuestionService questionService = new QuestionService();
    this._questions = await questionService.getAll();
  }

  List<Question> get questions => _questions;
}