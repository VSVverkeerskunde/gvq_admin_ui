import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:gvq_admin_ui/src/question/category.dart';
import 'package:gvq_admin_ui/src/question/category_service.dart';

import 'package:gvq_admin_ui/src/question/question.dart';
import 'package:gvq_admin_ui/src/question/question_service.dart';

@Component(
    selector: 'questions-list',
    templateUrl: 'questions_list_component.html',
    directives: [coreDirectives, formDirectives])

class QuestionsListComponent implements OnInit {
  List<Category> _categories;
  String selectedCategoryId;

  List<Question> _questions;
  List<Question> _filteredQuestions;
  int _idDirection = 1;
  int _categoryDirection = 1;

  List<Category> get categories => _categories;
  List<Question> get filteredQuestions => _filteredQuestions;

  @override
  void ngOnInit() async {
    CategoryService categoryService = new CategoryService();
    this._categories = await categoryService.getAll();

    QuestionService questionService = new QuestionService();
    this._questions = await questionService.getAll();

    this._filteredQuestions = this._questions;
  }

  void onSortId() {
    _questions.sort((q1, q2) {
      return q1.id.compareTo(q2.id) * this._idDirection;
    });
    this._idDirection = this._idDirection * -1;
    this._filteredQuestions = _questions.toList();
  }

  void onSortCategory() {
    _questions.sort((q1, q2) {
      return q1.category.name.compareTo(q2.category.name) * this._categoryDirection;
    });
    this._categoryDirection = this._categoryDirection * -1;
    this._filteredQuestions = _questions.toList();
  }

  void onFilterCategory(String selectedCategoryId) {
    this._filteredQuestions = _questions.where((q) {
      return q.category.id == selectedCategoryId;
    }).toList();
  }
}