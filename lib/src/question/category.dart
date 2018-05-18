class Category {
  String _id;
  String _name;

  Category(this._id, this._name);

  String get id => _id;
  String get name => _name;

  Map toJson() {
    Map map = new Map();
    map['id'] = this._id;
    map['name'] = this._name;
    return map;
  }

  @override
  String toString() {
    return 'Category{_id: $_id, _name: $_name}';
  }
}