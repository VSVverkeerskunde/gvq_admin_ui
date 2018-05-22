import 'dart:convert';
import 'dart:html';

import 'package:gvq_admin_ui/src/question/question.dart';

class QuestionService {
  String _url = 'http://localhost:8000/questions';

  void save(Question question) {
    HttpRequest request = new HttpRequest();
    request.open('POST', this._url, async: false);

    request.onReadyStateChange.listen((_) {
      print(request.status);
      print(request.responseText);
    });

    String questionAsJson = json.encode(question);
    request.send(questionAsJson);
  }
}