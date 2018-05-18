import 'package:gvq_admin_ui/src/question/answer.dart';
import 'package:gvq_admin_ui/src/question/category.dart';

class Question {
  String _language;
  int _year;
  Category _category;
  String _text;
  Uri _pictureUri;
  List<Answer> _answers;
  String _feedback;

  Question(
      this._language,
      this._year,
      this._category,
      this._text,
      this._pictureUri,
      this._answers,
      this._feedback);

  Question.createEmpty() {
    this._answers = new List<Answer>();

    for (int index = 0; index < 3; index++) {
      this._answers.add(new Answer.createEmpty());
    }
  }

  set language(String value) => _language = value;
  String get language => _language;

  set year(int value) => _year = value;
  int get year => _year;

  set yearAsString(String value) => _year = int.parse(value);
  String get yearAsString => _year.toString();

  set category(Category value) => _category = value;
  Category get category => _category;

  set text(String value) => _text = value;
  String get text => _text;

  set pictureUri(Uri value) => _pictureUri = value;
  Uri get pictureUri => _pictureUri;

  set answers(List<Answer> value) => _answers = value;
  List<Answer> get answers => _answers;

  set feedback(String value) => _feedback = value;
  String get feedback => _feedback;
}