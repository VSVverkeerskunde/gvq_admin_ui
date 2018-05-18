class Answer {
  String _text;
  bool _correct;

  Answer(this._text, this._correct);

  Answer.createEmpty() {}

  set text(String value) => _text = value;
  String get text => _text;

  set correct(bool value) => _correct = value;
  bool get correct => _correct;
}