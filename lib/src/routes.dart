import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'route_paths.dart' as paths;
import 'account/company_register_component.template.dart' as crct;
import 'question/questions_list_component.template.dart' as qlct;

@Injectable()
class Routes {
  static final _account = new RouteDefinition(
    routePath: paths.account,
    component: crct.CompanyRegisterComponentNgFactory,
  );
  static final _questions = new RouteDefinition(
    routePath: paths.questions,
    component: qlct.QuestionsListComponentNgFactory,
  );

  //RouteDefinition get account => _account;
  final account = _account;
  final questions = _questions;

  final List<RouteDefinition> all = [
    _account,
    _questions,
  ];
}
