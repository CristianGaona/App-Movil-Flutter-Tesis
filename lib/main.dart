import 'package:flutter/material.dart';
import 'package:lojacar/src/pages/home_page.dart';


import 'package:lojacar/src/pages/menu_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lojacar',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text('Bievenidos a LojaCar'),
          backgroundColor: Colors.indigoAccent,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],
        ),
        drawer: MenuLateral(),
        body: HomePage(),
      )
    );
  }
}