import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  Container buildContainer2() {
    return Container(
      color: Colors.brown,
      height: 40.0,
      width: 40.0,
    );
  }

  Widget _buildContainer(Color colorType,double size){
    return Container(
      color: colorType,
      height: size,
      width: size,
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // 生成複雜的 widget tree:  return Container(); --> Scaffold();

    return Scaffold(
      appBar: AppBar( title: Center(child:Text('Widget Tree'))),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  buildRow(),
                  Padding(padding:EdgeInsets.all(16.0),),
                  NewWidget(),
                ],
              ),
              //child: Container(),
            ),

          ),

        ),
      ),
    );
  }

  Row buildRow() {
    return Row(
                children: <Widget>[
                  _buildContainer(Colors.black,40),
                  Padding(padding:EdgeInsets.all(16.0),),
                  Expanded(
                      child: _buildContainer(Colors.red,40),
                  ),
                  Padding(padding:EdgeInsets.all(16.0),),
                  buildContainer2(),

                  // Divider(),
                  // Row(
                  //   children: <Widget>[
                  //
                  //   ],
                  // ),
                  // Divider(),
                  // Text('End of the Line'),


                ],
              );
  }



}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              color: Colors.yellow,
              height: 60.0,
              width: 60.0,
            ),
            Padding(padding:EdgeInsets.all(16.0),),
            Container(
              color: Colors.amber,
              height: 40.0,
              width: 40.0,
            ),
            Padding(padding:EdgeInsets.all(16.0),),
            Container(
              color: Colors.brown,
              height: 20.0,
              width: 20.0,
            ),
            Divider(),
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.lightGreen,
                  radius: 100.0,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: 100.0,
                        width: 100.0,
                        color: Colors.yellow,
                      ),
                      Container(
                        height: 60.0,
                        width: 60.0,
                        color: Colors.amber,
                      ),
                      Container(
                        height: 40.0,
                        width: 40.0,
                        color: Colors.brown,
                      ),
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
    );
  }
}

