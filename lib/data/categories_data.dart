import 'package:flutter_app435/model/categories.dart';
import 'package:flutter_app435/model/category.dart';

class CategoriesData{
  Categories _categories;
  CategoriesData(){
    this._categories = Categories([
      Category(0,"Популярные блюда"),
      Category(1,"Бургеры"),
      Category(2,"Напитки"),
      Category(3,"Комбо"),
      Category(4,"Закуски"),
    ]);
  }
  Categories get categories => _categories;
}