import 'package:flutter/material.dart';
import 'secondPage.dart';
import 'routeUrl.dart';

class Home extends StatelessWidget {
  // var text_widget;
  // var recvData;
  @override
  Widget build( BuildContext context ){
    // (1)  初步可以線設定 空的 Widget
    //return Container();
    //var text_widget = Text('Start 2', style: TextStyle(fontSize: 40));
    //recvData = ModalRoute.of(context)!.settings.arguments as objectData;
    // if (recvData == null) {
    //   text_widget = Text('Start 2', style: TextStyle(fontSize: 40));
    //
    // } else {
    //   text_widget = Text('Start Back ${recvData.num} - ${recvData.str}', style: TextStyle(fontSize: 40));
    //
    // }

    return Scaffold(
      appBar: AppBar(
        title: Text('123'),
      ),
      body:   Center(
        child: GestureDetector(
          child:Text('Start 2', style: TextStyle(fontSize: 40)),
          //child:  text_widget,
          //onTap: () => Navigator.pushNamed(context, '/second_page'),

          onTap: () => Navigator.pushNamed(context, SECOND_PAGE,
              arguments: objectData(0,'InfoFromHomePage')
          ),

          // onTap: () => Navigator.of(context).push(
          //   MaterialPageRoute(
          //       builder: (_) => SecondPage(),
          //   ),
          ),
        ),


      );


  }

}