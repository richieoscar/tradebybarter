class Product{
  String _name;
  String _value;

  Product(this._name, this._value);

  String get description => _value;

  String get name => _name;
}