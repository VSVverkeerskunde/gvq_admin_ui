import 'package:angular/angular.dart';

import 'package:gvq_admin_ui/src/question/question_detail_component.dart';
import 'package:gvq_admin_ui/src/question/questions_list_component.dart';

@Component(
  selector: 'app',
  templateUrl: 'app_component.html',
  directives: [QuestionDetailComponent, QuestionsListComponent]
)

class AppComponent {
  String name = 'Angular';
}