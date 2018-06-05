import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:gvq_admin_ui/src/question/category.dart';
import 'package:gvq_admin_ui/src/question/category_service.dart';

import 'package:gvq_admin_ui/src/question/question.dart';
import 'package:gvq_admin_ui/src/question/question_detail_component.dart';
import 'package:gvq_admin_ui/src/question/question_service.dart';

@Component(
    selector: 'questions-list',
    templateUrl: 'questions_list_component.html',
    directives: [coreDirectives, formDirectives, QuestionDetailComponent],
    providers: [
      const ClassProvider(CategoryService),
      const ClassProvider(QuestionService)])

class QuestionsListComponent implements OnInit {

  final CategoryService _categoryService;
  final QuestionService _questionService;

  QuestionsListComponent(this._categoryService, this._questionService);

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
    this._categories = await this._categoryService.getAll();

    this._questions = await this._questionService.getAll();

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

  void onDeleteQuestion(Question question) {
    this._questionService.delete(question);
    _questions.removeWhere((q) {
      return q.id == question.id;
    });
    _filteredQuestions = _questions;
  }
}