import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'src/routes.dart';

@Component(
  selector: 'app',
  templateUrl: 'app_component.html',
  directives: [routerDirectives],
  providers: [
    const ClassProvider(Routes)
    ]
)

class AppComponent {
  String name = 'Angular';

  final Routes routes;
  AppComponent(this.routes);
}
