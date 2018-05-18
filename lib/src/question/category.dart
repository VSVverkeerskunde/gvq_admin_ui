class Category {
  String _id;
  String _name;

  Category(this._id, this._name);

  Category.fromMap(Map map) {
    this._id = map['id'];
    this._name = map['name'];
  }

  String get id => _id;
  String get name => _name;
}