import 'package:uuid/uuid.dart';

class Answer {
  String _text;
  bool _correct;

  Answer(this._text, this._correct);

  String get text => _text;
  bool get correct => _correct;

  Map toJson() {
    var uuid = new Uuid();

    Map map = new Map();
    // TODO: id needs to be created in the backend.
    map['id'] = uuid.v4();
    map['text'] = this._text;
    map['correct'] = this._correct;
    return map;
  }

  @override
  String toString() {
    return 'Answer{_text: $_text, _correct: $_correct}';
  }
}