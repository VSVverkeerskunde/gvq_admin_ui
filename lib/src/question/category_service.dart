import 'dart:async';
import 'dart:html';
import 'dart:convert';

import 'package:gvq_admin_ui/src/question/category.dart';

class CategoryService {
  String _url = 'http://localhost:8000/categories';

  Future<List<Category>> getAll() async {
    HttpRequest request = await HttpRequest.request(this._url, method: 'GET');

    if (request.status != 200) {
      return null;
    }

    List<Category> categories = new List<Category>();
    json.decode(request.responseText).forEach((categoryMap) {
      categories.add(this.categoryFromMap(categoryMap));
    });

    return categories;
  }

  Category categoryFromMap(categoryMap) {
    return new Category(categoryMap['id'], categoryMap['name']);
  }
}
