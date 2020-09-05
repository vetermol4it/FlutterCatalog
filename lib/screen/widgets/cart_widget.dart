import 'package:flutter/material.dart';
import 'package:flutter_app435/model/menu_item.dart';

class CartWidget extends StatelessWidget{
  MenuItem _menuItem;
  CartWidget(this._menuItem);
  @override
  Widget build(BuildContext context) {
    Widget _titleText = Text("${_menuItem.title}", style:  TextStyle(color: Colors.white, fontSize: 18));
    Widget _priceText = Text("${_menuItem.price}"+" ₽",style:  TextStyle(color: Colors.white, fontSize: 18));
    Widget _image = Image.asset(_menuItem.image, colorBlendMode: BlendMode.color,height: 200, width:(MediaQuery.of(context).size.width/2)-16, fit: BoxFit.cover);
    Widget _infoContainer = Container(
        height: 100,
        width: (MediaQuery.of(context).size.width/2)-16,
        color:  Color.fromRGBO(50, 50, 50, 1.0),
        padding: const EdgeInsets.only(top: 8, left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [_titleText,_priceText],)
    );
    Widget _cartWidget = ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Column(
            children:[_image,_infoContainer]
        )
    );
    return _cartWidget;
  }

}