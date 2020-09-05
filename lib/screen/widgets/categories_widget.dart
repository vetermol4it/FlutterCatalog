import 'package:flutter/material.dart';
import 'package:flutter_app435/model/categories.dart';
import 'package:flutter_app435/screen/widgets/category_widget.dart';

class CategoriesWidget extends StatelessWidget{
  final Categories _categories;
  CategoriesWidget(this._categories);
  @override
  Widget build(BuildContext context) {
    Widget _categoriesList = ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: _categories.categories.length,
      itemBuilder: (context,index) {
        return itemsRowBuilder(context,index);
      },
    );
    Widget _categoriesWidget = Container(
      height: 40,
      child:_categoriesList,
    );
    return _categoriesWidget;
  }
  itemsRowBuilder(context,index) {
    return CategoryWidget(_categories.categories[index]);
  }
}