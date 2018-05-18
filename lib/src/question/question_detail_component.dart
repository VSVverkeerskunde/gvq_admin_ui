import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

import 'package:gvq_admin_ui/src/question/category.dart';
import 'package:gvq_admin_ui/src/question/category_service.dart';
import 'package:gvq_admin_ui/src/question/question.dart';

@Component(
    selector: 'question-detail',
    templateUrl: 'question_detail_component.html',
    directives: [coreDirectives, formDirectives])

class QuestionDetailComponent implements OnInit {

  Question _question;
  List<Category> _categories;

  Question get question => _question;
  List<Category> get categories => _categories;

  @override
  void ngOnInit() async {
    this._question = new Question.createEmpty();

    this._question.language = 'fr';
    this._question.year = 2020;

    this._categories = new List<Category>();

    CategoryService categoryService = new CategoryService();
    this._categories = await categoryService.getAll();
  }

  void onSubmit() {
    print('Submit pressed.');
  }
}
