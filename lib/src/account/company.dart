import 'package:gvq_admin_ui/src/account/user.dart';
import 'package:gvq_admin_ui/src/account/translated_alias.dart';

class Company {
  String _id;
  String _name;
  int _numEmployees;
  List<TranslatedAlias> _translatedAliases;
  User _user;

  Company(
    this._id,
    this._name,
    this._numEmployees,
    this._translatedAliases,
    this._user);

  String get id => _id;

  String get name => _name;

  int get numEmployees => _numEmployees;

  List<TranslatedAlias> get translatedAliases => _translatedAliases;

  User get user => _user;

  Map toJson() {
    List<Map> translatedAliasesMap = new List<Map>();
    this._translatedAliases.forEach((TranslatedAlias translatedAlias) {
      translatedAliasesMap.add(translatedAlias.toJson());
    });

    Map map = new Map();
    if (this._id != null) {
      map['id'] = this._id;
    }
    map['name'] = this._name;
    map['numberOfEmployees'] = this._numEmployees;
    map['aliases'] = this._translatedAliases;
    map['user'] = this._user;
    return map;
  }

  @override
  String toString() {
    return 'Company{_name: $_name, _numEmployees: $_numEmployees, _translatedAliases: $_translatedAliases, _user: $_user}';
  }
}
