import 'package:flutter/material.dart';
import 'package:flutter_app435/screen/main_screen.dart';

import 'bloc/common/bloc_provider.dart';
import 'bloc/main_bloc.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final MainBloc bloc = MainBloc();
    final MainScreen screen = MainScreen();
    return BlocProvider(
      child: screen,
      bloc: bloc,
    );
  }
}