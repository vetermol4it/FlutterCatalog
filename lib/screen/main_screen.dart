import 'package:flutter/material.dart';
import 'package:flutter_app435/bloc/common/bloc_provider.dart';
import 'package:flutter_app435/bloc/main_bloc.dart';
import 'package:flutter_app435/data/categories_data.dart';
import 'package:flutter_app435/data/menu_data.dart';
import 'package:flutter_app435/screen/widgets/categories_widget.dart';
import 'package:flutter_app435/screen/widgets/menu_widget.dart';


class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final MainBloc bloc = BlocProvider.of(context);
    Widget _categoriesWidget = StreamBuilder(
        stream: bloc.outCategories,
        builder: (BuildContext context, AsyncSnapshot<CategoriesData> snapshot) {
          if(snapshot.hasData){
            return CategoriesWidget(snapshot.data.categories);
          }
          else{
            return CircularProgressIndicator();
          }
        }
    );
    Widget _menuWidget = StreamBuilder(
        stream: bloc.outMenu,
        builder: (BuildContext context, AsyncSnapshot<MenuData> snapshot) {
          if(snapshot.hasData){
            return MenuWidget(snapshot.data.menu);
          }
          else{
            return CircularProgressIndicator();
          }
        }
    );
    Widget _backAppBarButton = IconButton(icon:Icon(Icons.arrow_back, color: Colors.white));
    Widget _infoAppBarButton = IconButton(icon:Icon(Icons.info_outline, color: Colors.white));
    Widget _textAppBar = Text("Бургер Кинг");
    AppBar _appBar = AppBar(
      leading: _backAppBarButton,
      backgroundColor: Colors.black,
      actions:[_infoAppBarButton],
      centerTitle: true,
      title: _textAppBar,
    );
    Widget _body = Container(
        color: Colors.black,
        child:Column(
          children: [
            _categoriesWidget,
            _menuWidget,
          ],
        )
    );
    return Scaffold(
      appBar: _appBar,
      body: _body
    );
  }
}