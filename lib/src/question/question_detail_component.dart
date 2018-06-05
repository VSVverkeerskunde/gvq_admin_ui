import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:gvq_admin_ui/src/question/answer.dart';

import 'package:gvq_admin_ui/src/question/category.dart';
import 'package:gvq_admin_ui/src/question/category_service.dart';
import 'package:gvq_admin_ui/src/question/question.dart';
import 'package:gvq_admin_ui/src/question/question_service.dart';

@Component(
    selector: 'question-detail',
    templateUrl: 'question_detail_component.html',
    directives: [coreDirectives, formDirectives],
    providers: [
      const ClassProvider(CategoryService),
      const ClassProvider(QuestionService)])

class QuestionDetailComponent implements OnInit {
  final CategoryService _categoryService;
  final QuestionService _questionService;

  QuestionDetailComponent(this._categoryService, this._questionService);

  List<Category> _categories;

  String language;
  String year;
  String categoryId;
  String text;
  List<String> answers = ['', '', ''];
  int correctAnswer;
  String feedback;

  List<Category> get categories => _categories;

  @override
  void ngOnInit() async {
    this._categories = await this._categoryService.getAll();
  }

  void onSubmit() {
    Question question = this._createQuestion();
    this._questionService.save(question);
  }

  List<Answer> _createAnswers() {
    List<Answer> createdAnswers = new List<Answer>();
    for (int index = 0; index < 3; index++) {
      createdAnswers.add(
          new Answer(
              null,
              this.answers[index],
              this.correctAnswer == index));
    }
    return createdAnswers;
  }

  Question _createQuestion() {
    return new Question(
        null,
        this.language,
        int.parse(this.year),
        this._findSelectedCategory(this.categoryId),
        this.text,
        new Uri.dataFromString('http://www.google.be'),
        this._createAnswers(),
        this.feedback);
  }

  Category _findSelectedCategory(String categoryId) {
    Category foundCategory = null;

    this._categories.forEach((Category category) {
      if (categoryId == category.id) {
        foundCategory = category;
      }
    });

    return foundCategory;
  }
}
