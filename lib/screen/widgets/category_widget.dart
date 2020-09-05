import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app435/model/category.dart';

class CategoryWidget extends StatelessWidget{
  final Category _category;
  CategoryWidget(this._category);
  @override
  Widget build(BuildContext context) {
    Widget _text = Text("${_category.name}",style: TextStyle(color: Colors.black, fontSize: 14));
    Widget _textContainer = Container(margin: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5), child: _text);
    Widget _categoryWidget = Card(
        color: new Color.fromRGBO(255, 220, 67, 1.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child:Center(child:_textContainer)
    );
    return _categoryWidget;
  }

}
