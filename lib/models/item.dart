import 'dart:io';

class Item {
  int _id;
  String _itemName;
  double _price;
  String _category;
  String _description;
  String _itemOfExchange;
  String _createdAt;
  String _updatedAt;
  String _image;
  int _author;

  Item(this._itemName, this._price, this._category, this._description,
      this._itemOfExchange, this._image, this._author);

  Item.created(
      this._id,
      this._itemName,
      this._price,
      this._category,
      this._description,
      this._itemOfExchange,
      this._createdAt,
      this._updatedAt,
      this._image,
      this._author);

  int get id => _id;
  set id(int id) => _id = id;
  String get itemName => _itemName;
  set itemName(String itemName) => _itemName = itemName;
  double get price => _price;
  set price(double price) => _price = price;
  String get category => _category;
  set category(String category) => _category = category;
  String get description => _description;
  set description(String description) => _description = description;
  String get itemOfExchange => _itemOfExchange;
  set itemOfExchange(String itemOfExchange) => _itemOfExchange = itemOfExchange;
  String get createdAt => _createdAt;
  set createdAt(String createdAt) => _createdAt = createdAt;
  String get updatedAt => _updatedAt;
  set updatedAt(String updatedAt) => _updatedAt = updatedAt;
  String get image => _image;
  set image(String image) => _image = image;
  int get author => _author;
  set author(int author) => _author = author;

  Item.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _itemName = json['item_name'];
    _price = json['price'];
    _category = json['category'];
    _description = json['description'];
    _itemOfExchange = json['item_of_exchange'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _image = json['image'];
    _author = json['author'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['item_name'] = this._itemName;
    data['price'] = this._price;
    data['category'] = this._category;
    data['description'] = this._description;
    data['item_of_exchange'] = this._itemOfExchange;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    data['image'] = this._image;
    data['author'] = this._author;
    return data;
  }
}
