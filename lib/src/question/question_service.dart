import 'dart:convert';
import 'dart:html';

import 'package:gvq_admin_ui/src/config.dart';
import 'package:gvq_admin_ui/src/question/answer.dart';
import 'package:gvq_admin_ui/src/question/category.dart';
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

  void delete(Question question) {
    HttpRequest request = new HttpRequest();
    request.open('DELETE', this._url + '/' + question.id, async: false);

    request.onReadyStateChange.listen((_) {
      if (request.readyState == HttpRequest.DONE && request.status == 200) {
        print(request.responseText);
      }
    });

    request.send();
  }

  List<Question> getAll() {
    List<Question> questions = new List<Question>();

    HttpRequest.getString(this._url).then(
        (String responseText) {
          List questionsAsJson = json.decode(responseText);
          questionsAsJson.forEach((questionAsJson) {
            Question question = this._questionFromMap(questionAsJson);
            questions.add(question);
          });
        }
    );

    return questions;
  }

  Question _questionFromMap(Map questionMap) {
    List<Answer> answers = new List<Answer>();
    questionMap['answers'].forEach((answerMap) {
      Answer answer = new Answer(
        null,
        answerMap['text'],
        answerMap['correct']
      );
      answers.add(answer);
    });

    return new Question(
      questionMap['id'],
      questionMap['language'],
      questionMap['year'],
      new Category(
        questionMap['category']['id'],
        questionMap['category']['name']
      ),
      questionMap['text'],
      Uri.dataFromString(questionMap['pictureUri']),
      answers,
      questionMap['feedback']
    );
  }
}