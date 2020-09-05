import 'package:flutter/material.dart';
import 'package:flutter_app435/model/menu.dart';
import 'package:flutter_app435/screen/widgets/cart_widget.dart';

class MenuWidget extends StatelessWidget{
  final Menu _menu;
  MenuWidget(this._menu);
  @override
  Widget build(BuildContext context) {
    Widget _menuList = ListView.builder(
      itemCount: (_menu.listItems.length/2).round(),
      itemBuilder: (context,index) {
        return itemsRowBuilder(context,index*2);
      }
    );
    Widget _menuWidget = Container(
        height: MediaQuery.of(context).size.height - 120,
        child:_menuList
    );
    return _menuWidget;
  }
  itemsRowBuilder(context,index) {
    CartWidget leftItem = CartWidget(_menu.listItems[index]);
    if (index < _menu.listItems.length-1) {
      CartWidget rightItem = CartWidget(_menu.listItems[index + 1]);
      return Row(
        children: [Container(margin: EdgeInsets.all(5), child: leftItem), Container(margin: EdgeInsets.all(10), child:  rightItem)],
      );
    }
    else {
      return Container(margin: EdgeInsets.all(5), child: leftItem);
    }
  }
}

