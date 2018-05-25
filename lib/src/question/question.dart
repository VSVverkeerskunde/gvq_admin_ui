import 'package:gvq_admin_ui/src/question/answer.dart';
import 'package:gvq_admin_ui/src/question/category.dart';

class Question {
  String _id;
  String _language;
  int _year;
  Category _category;
  String _text;
  Uri _pictureUri;
  List<Answer> _answers;
  String _feedback;

  Question(
      this._id,
      this._language,
      this._year,
      this._category,
      this._text,
      this._pictureUri,
      this._answers,
      this._feedback);

  String get id => _id;
  String get language => _language;
  int get year => _year;
  Category get category => _category;
  String get text => _text;
  Uri get pictureUri => _pictureUri;
  List<Answer> get answers => _answers;
  String get feedback => _feedback;

  Map toJson() {
    List<Map> answersMap = new List<Map>();
    this._answers.forEach((Answer answer) {
      answersMap.add(answer.toJson());
    });

    Map map = new Map();
    if (this._id != null) {
      map['id'] = this._id;
    }
    map['language'] = this._language;
    map['year'] = this._year;
    map['category'] = this._category;
    map['text'] = this._text;
    map['pictureUri'] = this._pictureUri.toString();
    map['answers'] = answersMap;
    map['feedback'] = this._feedback;
    return map;
  }

  @override
  String toString() {
    return 'Question{_language: $_language, _year: $_year, _category: $_category, _text: $_text, _pictureUri: $_pictureUri, _answers: $_answers, _feedback: $_feedback}';
  }
}