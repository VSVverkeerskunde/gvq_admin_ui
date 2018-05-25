class Answer {
  String _id;
  String _text;
  bool _correct;

  Answer(this._id, this._text, this._correct);

  String get id => _id;
  String get text => _text;
  bool get correct => _correct;

  Map toJson() {
    Map map = new Map();
    if (this._id != null) {
      map['id'] = this._id;
    }
    map['text'] = this._text;
    map['correct'] = this._correct;
    return map;
  }

  @override
  String toString() {
    return 'Answer{_text: $_text, _correct: $_correct}';
  }
}