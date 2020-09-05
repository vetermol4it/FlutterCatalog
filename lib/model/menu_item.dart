import 'package:flutter_app435/model/category.dart';

class MenuItem {
  final int _id;
  final Category _category;
  final String _title;
  final String _image;
  final double _price;

  int get id => _id;
  Category get category => _category;
  String get title => _title;
  String get image => _image;
  double get price => _price;

  MenuItem(
      this._id,
      this._category,
      this._title,
      this._image,
      this._price
      );
}