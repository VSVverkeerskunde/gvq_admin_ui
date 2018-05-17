import 'package:gvq_admin_ui/src/question/answer.dart';

class Question {
  String _language;
  int _year;
  String _text;
  List<Answer> _answers;

  Question(this._language, this._year, this._text, this._answers);

  String get language => _language;
  String get text => _text;
  int get year => _year;
  List<Answer> get answers => _answers;
}