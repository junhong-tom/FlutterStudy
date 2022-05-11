import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'pages/HomePage.dart';
void main() {
  debugPaintSizeEnabled = true;
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return MaterialApp(
      title: 'Starter Template',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );


  }


}
