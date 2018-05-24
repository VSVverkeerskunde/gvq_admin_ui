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
    directives: [coreDirectives, formDirectives])

class QuestionDetailComponent implements OnInit {
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
    CategoryService categoryService = new CategoryService();
    this._categories = await categoryService.getAll();
  }

  void onSubmit() {
    Question question = this._createQuestion();
    QuestionService questionService = new QuestionService();
    questionService.save(question);
  }

  List<Answer> _createAnswers() {
    List<Answer> createdAnswers = new List<Answer>();
    for (int index = 0; index < 3; index++) {
      createdAnswers.add(
          new Answer(this.answers[index], this.correctAnswer == index));
    }
    return createdAnswers;
  }

  Question _createQuestion() {
    return new Question(
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
        print(foundCategory);
      }
    });

    return foundCategory;
  }
}
