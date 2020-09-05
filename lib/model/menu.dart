import 'menu_item.dart';

class Menu {
  final List<MenuItem> _listItems;

  Menu(this._listItems);

  List<MenuItem> get listItems => _listItems;
}