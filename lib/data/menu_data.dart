import 'package:flutter_app435/data/categories_data.dart';
import 'package:flutter_app435/model/menu.dart';
import 'package:flutter_app435/model/menu_item.dart';

class MenuData{
  Menu _menu;
  MenuData(){
      this._menu = Menu([
        MenuItem(1,CategoriesData().categories.categories[1], "Воппер", "image/menu_item_1.png", 255),
        MenuItem(2,CategoriesData().categories.categories[1], "Гумбургер", "image/menu_item_2.png", 59.99),
        MenuItem(2,CategoriesData().categories.categories[4], "Картофель фри", "image/menu_item_3.png", 99),
        MenuItem(2,CategoriesData().categories.categories[4], "Картофель по деревенски", "image/menu_item_4.png", 99),
      ]);
  }
  Menu get menu => _menu;
}