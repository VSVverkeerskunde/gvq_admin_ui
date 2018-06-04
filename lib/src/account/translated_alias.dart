class TranslatedAlias {
  String _id;
  String _alias;
  String _language;

  TranslatedAlias(
      this._id,
      this._alias,
      this._language
      );

  TranslatedAlias.createEmptyTranslatedAlias();

  String get id => _id;

  String get alias => _alias;

  String get language => _language;

  Map toJson() {
    Map map = new Map();
    if (this._id != null) {
      map['id'] = this._id;
    }
    map['alias'] = this._alias;
    map['language'] = this._language;
    return map;
  }

  set alias(String value) {
    _alias = value;
  }

  set language(String value) {
    _language = value;
  }

  @override
  String toString() {
    return 'TranslatedAlias{_alias: $_alias, _language: $_language}';
  }
}
