import 'package:flutter/material.dart';
import 'app_body_001.dart';
import 'app_body_002.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);
  //var appBarText = setAppBar();
  var appBar = AppBar(
   title: Text('Welcome to Flutter'),
  );
  //var appBody = app_body_001();
  //var appBody = app_body_002().titleSection;
  var appBody = app_body_002();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: appBody,
        appBar: appBar,

        ),
      //home: appBody,
      );

  }
}