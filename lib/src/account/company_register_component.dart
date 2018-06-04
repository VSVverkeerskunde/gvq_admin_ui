import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:gvq_admin_ui/src/account/company.dart';
import 'package:gvq_admin_ui/src/account/company_service.dart';
import 'package:gvq_admin_ui/src/account/translated_alias.dart';
import 'package:gvq_admin_ui/src/account/user.dart';

@Component(
    selector: 'company-register',
    templateUrl: 'company_register_component.html',
    directives: [coreDirectives, formDirectives])

class CompanyRegisterComponent {
  String name;
  int numEmployees;
  List<TranslatedAlias> translatedAliases = [
    new TranslatedAlias.createEmptyTranslatedAlias(),
    new TranslatedAlias.createEmptyTranslatedAlias()
  ];
  User user = new User.createEmptyUser();

  void onSubmit() {
    Company company = this._createCompany();
    CompanyService companyService = new CompanyService();
    companyService.register(company);
  }

  Company _createCompany() {
    translatedAliases[0].language = 'nl';
    translatedAliases[1].language = 'fr';
    return new Company(
        null, this.name, this.numEmployees, this.translatedAliases, this.user);
  }
}
