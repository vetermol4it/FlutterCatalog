import 'dart:async';

import 'package:flutter_app435/data/categories_data.dart';
import 'package:flutter_app435/data/menu_data.dart';
import 'common/bloc_base.dart';


class MainBloc extends BlocBase {
  MenuData _menu = MenuData();
  CategoriesData _categories = CategoriesData();

  final StreamController<MenuData> _menuController = StreamController<MenuData>();
  final StreamController<CategoriesData> _categoriesController = StreamController<CategoriesData>();


  Sink<MenuData> get _inMenu => _menuController.sink;
  Stream<MenuData> get outMenu => _menuController.stream;

  Sink<CategoriesData> get _inCategories => _categoriesController.sink;
  Stream<CategoriesData> get outCategories => _categoriesController.stream;

  MainBloc() {
    _inMenu.add(_menu);
    _inCategories.add(_categories);
  }

  @override
  void dispose() {
    _menuController.close();
    _categoriesController.close();
  }
}