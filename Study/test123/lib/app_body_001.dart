import 'package:flutter/material.dart';

class app_body_001 extends StatelessWidget {
    @override
    Widget build(BuildContext context){
        final widget = Center(
            child: Text('lib body say Hellow'));

        return widget;


    }



    Widget titleSection = Container(
        child: Row(
            children: [
                Expanded(
                    child: Column(
                        children: [
                            Container(
                                child: const Text(
                                'Oeschinen Lake Campground',
                                ),
                            ),
                            Text(
                                'Kandersteg, Switzerland',
                            ),
                        ],
                    ),

                ),
                Icon(
                    Icons.star,
                    color: Colors.red[500],
                ),
                const Text('41'),

            ],
        ),

    );
}



