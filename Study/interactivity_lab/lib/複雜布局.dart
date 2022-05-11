import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  final container_40_yellow = Container(
    color: Colors.yellow,
    height: 40.0,
    width: 40.0,
  );
  final container_60_yellow = Container(
    color: Colors.yellow,
    height: 60.0,
    width: 60.0,
  );
  final container_100_yellow = Container(
    color: Colors.yellow,
    height: 100.0,
    width: 100.0,
  );
  final container_40_amber = Container(
    color: Colors.amber,
    height: 40.0,
    width: 40.0,
  );

  final container_60_amber = Container(
    color: Colors.amber,
    height: 60.0,
    width: 60.0,
  );

  final container_40_brown = Container(
    color: Colors.brown,
    height: 40.0,
    width: 40.0,
  );

  final container_20_brown = Container(
    color: Colors.brown,
    height: 20.0,
    width: 20.0,
  );

  Widget _buildContainer(){
    return Container(
      color: Colors.red,
      height: 30.0,
      width: 30.0,
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // 生成複雜的 widget tree:  return Container(); --> Scaffold();

    return Scaffold(
      appBar: AppBar( title: Center(child:Text('Widget Tree'))),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    //_buildContainer(),
                    //container_40_yellow,
                    Container(
                      color: Colors.red,
                      height: 40.0,
                      width: 40.0,
                    ),
                    Padding(padding:EdgeInsets.all(16.0),),
                    Expanded(
                      child: container_40_amber,
                    ),
                    Padding(padding:EdgeInsets.all(16.0),),
                    container_40_brown,
                  ],
                ),
                Padding(padding:EdgeInsets.all(16.0),),
                Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        container_60_yellow,
                        Padding(padding:EdgeInsets.all(16.0),),
                        container_40_amber,
                        Padding(padding:EdgeInsets.all(16.0),),
                        container_20_brown,
                        Divider(),
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.lightGreen,
                              radius: 100.0,
                              child: Stack(
                                children: <Widget>[
                                  container_100_yellow,
                                  container_60_amber,
                                  container_40_brown,
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(),
                        Text('End of the Line'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            //child: Container(),
          ),

        ),

      ),
    );
  }

}

