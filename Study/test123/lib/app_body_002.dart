import 'package:flutter/material.dart';

class app_body_002 extends StatelessWidget {
  Widget MyTitleSection = Container(
    decoration: BoxDecoration(
        border: Border.all(color: Colors.blueAccent)
    ),
    child: Row(
      children: [
        Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.redAccent),
                ),
                padding: const EdgeInsets.all(32),
                margin: EdgeInsets.all(30),
                child: const Text(
                  'Oeschinen Lake Campground',
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.redAccent)
                ),
                child: Text(
                  'Kandersteg, Switzerland',
                ),
              ),
            ],
          ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.redAccent)
          ),
          child: Icon(
            Icons.star,
            color: Colors.red[500],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.redAccent)
          ),
          child:const Text('41'),
        ),
      ],
    ),
  );

  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          /*1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*2*/
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
        /*3*/
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        const Text('41'),
      ],
    ),
  );


  // Widget buildButtonColumn2(Color color, IconData icon, String label) {
  //   return Container(
  //     child: Column(
  //       children:[
  //         Icon(icon, color: color),
  //         Container(
  //           child:Text(label),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Widget buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  //Color color = Theme.of(context).primaryColor;
  //Color color = Colors.blue;

  // var color = Colors.red[500];
  // The instance member 'buildButtonColumn' can't be accessed in an initializer.
  // Widget _buttonSection = Row(
  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //   children: [
  //     buildButtonColumn(Colors.blue, Icons.call, 'CALL'),
  //     buildButtonColumn(Colors.blue, Icons.near_me, 'ROUTE'),
  //     buildButtonColumn(Colors.blue, Icons.share, 'SHARE'),
  //   ],
  // );

  Widget textSection = const Padding(
    padding: EdgeInsets.all(32),
    child: Text(
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
          'Alps. Situated 1,578 meters above sea level, it is one of the '
          'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
          'half-hour walk through pastures and pine forest, leads you to the '
          'lake, which warms to 20 degrees Celsius in the summer. Activities '
          'enjoyed here include rowing, and riding the summer toboggan run.',
      softWrap: true,
    ),
  );

  @override
  Widget build(BuildContext context){
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:[
        buildButtonColumn(Colors.blue, Icons.call, 'CALL2'),
        buildButtonColumn(Colors.blue, Icons.near_me, 'ROUTE'),
        buildButtonColumn(Colors.blue, Icons.share, 'SHARE'),
      ],
    );

    final widget =  ListView(
      children: [
              Image.asset(
                'image/lake.jpg',
                width:600,
                height:240,
                fit:BoxFit.cover,
              ),
              titleSection,
              buttonSection,
              // Row(
              //   children:[
              //     buildButtonColumn(Colors.blue, Icons.call, 'CALL'),
              //     buildButtonColumn(Colors.blue, Icons.near_me, 'ROUTE'),
              //     buildButtonColumn(Colors.blue, Icons.share, 'SHARE'),
              //   ],
              // ),
              textSection,
      ],
    );
    // final widget =  Column(
    //     children: [
    //       Image.asset(
    //         'image/lake.jpg',
    //         width:600,
    //         height:240,
    //         fit:BoxFit.cover,
    //       ),
    //       titleSection,
    //       buttonSection,
    //       // Row(
    //       //   children:[
    //       //     buildButtonColumn(Colors.blue, Icons.call, 'CALL'),
    //       //     buildButtonColumn(Colors.blue, Icons.near_me, 'ROUTE'),
    //       //     buildButtonColumn(Colors.blue, Icons.share, 'SHARE'),
    //       //   ],
    //       // ),
    //       textSection,
    //     ],
    // );

    return widget;


  }




}



