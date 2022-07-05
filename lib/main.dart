import 'package:animelist/Routes/MyRoutes.dart';
import 'package:animelist/Screens/TabGrids.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MainPage());
}
class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      routes: {
        MyRoutes.TabGrids:(context)=>TabGrids()
      },
    );
  }
}
