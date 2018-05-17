import 'package:angular/angular.dart';
import 'package:gvq_admin_ui/src/question/question_detail_component.dart';

@Component(
  selector: 'app',
  templateUrl: 'app_component.html',
  directives: [QuestionDetailComponent]
)

class AppComponent {
  String name = 'Angular';
}