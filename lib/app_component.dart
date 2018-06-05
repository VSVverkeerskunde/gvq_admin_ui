import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:gvq_admin_ui/src/account/company_service.dart';
import 'package:gvq_admin_ui/src/question/category_service.dart';
import 'package:gvq_admin_ui/src/question/question_service.dart';
import 'src/routes.dart';

@Component(
  selector: 'app',
  templateUrl: 'app_component.html',
  directives: [routerDirectives],
  providers: [
    const ClassProvider(CompanyService),
    const ClassProvider(CategoryService),
    const ClassProvider(QuestionService),
    const ClassProvider(Routes)
    ]
)

class AppComponent {
  String name = 'Angular';
  final Routes routes;

  AppComponent(this.routes);
}
