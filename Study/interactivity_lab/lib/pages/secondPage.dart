import 'package:flutter/material.dart';
import 'routeUrl.dart';

class SecondPage extends StatelessWidget {
  //objectData recvData;

  @override
  Widget build( BuildContext context ){
    // (1)  初步可以線設定 空的 Widget
    //return Container();
    //Object? recvData = ModalRoute.of(context).settings.arguments;

    objectData recvData = ModalRoute.of(context)!.settings.arguments as objectData;


    return Scaffold(

      body:  Center(
        child:
        GestureDetector(
          child: Text('Second ${recvData.num} - ${recvData.str}',
              style: TextStyle(fontSize: 40)),
          onTap: () => Navigator.of(context).pop(),
          //onTap: () => Navigator.pop(context,objectData(1,'InfoFromSecondPage')),
        ),

      ),

    );
  }

}