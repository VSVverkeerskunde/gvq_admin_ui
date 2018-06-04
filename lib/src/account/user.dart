class User {
  String _id;
  String _email;
  String _password;
  String _lastName;
  String _firstName;
  String _language;

  User(
      this._id,
      this._email,
      this._password,
      this._lastName,
      this._firstName,
      this._language);

  User.createEmptyUser();


  String get id => _id;

  String get email => _email;

  String get password => _password;

  String get lastName => _lastName;

  String get firstName => _firstName;

  String get language => _language;


  set email(String value) {
    _email = value;
  }

  set password(String value) {
    _password = value;
  }

  set lastName(String value) {
    _lastName = value;
  }

  set firstName(String value) {
    _firstName = value;
  }

  set language(String value) {
    _language = value;
  }

  Map toJson() {
    Map map = new Map();
    if (this._id != null) {
      map['id'] = this._id;
    }
    map['email'] = this._email;
    map['password'] = this._password;
    map['lastName'] = this._lastName;
    map['firstName'] = this._firstName;
    map['language'] = this._language;
    return map;
  }

  @override
  String toString() {
    return 'User{_email: $_email, _lastName: $_lastName, _firstName: $_firstName, _language: $_language}';
  }
}
