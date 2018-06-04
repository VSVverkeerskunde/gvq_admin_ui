import 'dart:convert';
import 'dart:html';

import 'package:gvq_admin_ui/src/account/company.dart';
import 'package:gvq_admin_ui/src/config.dart';

class CompanyService {
  String _url = Config.apiUrl + 'account/register';

  void register(Company company) {
    HttpRequest request = new HttpRequest();
    request.open('POST', this._url, async: false);

    request.onReadyStateChange.listen((_) {
      if (request.readyState == HttpRequest.DONE && request.status == 200) {
        print(request.responseText);
      }
    });

    String companyAsJson = json.encode(company);
    request.send(companyAsJson);
  }
}
