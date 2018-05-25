import 'dart:convert';
import 'dart:html';

import 'package:gvq_admin_ui/src/config.dart';
import 'package:gvq_admin_ui/src/question/question.dart';

class QuestionService {
  String _url = Config.apiUrl + 'questions';

  void save(Question question) {
    HttpRequest request = new HttpRequest();
    request.open('POST', this._url, async: false);

    request.onReadyStateChange.listen((_) {
      if (request.readyState == HttpRequest.DONE && request.status == 200) {
        print(request.responseText);
      }
    });

    String questionAsJson = json.encode(question);
    request.send(questionAsJson);
  }
}