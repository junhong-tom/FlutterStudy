import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'pages/home.dart';
import 'pages/secondPage.dart';
import 'pages/routeUrl.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;


void main() {
  //debugPaintSizeEnabled = true;
  runApp(MyApp());
}

// final Map<String, WidgetBuilder> routes345 ={
//   HOME_PAGE: (context) => Home(),
//   SECOND_PAGE: (context) => SecondPage(),
// };

class MyApp extends StatelessWidget {
  @override
  Widget build( BuildContext context ){
    return MaterialApp(
      title:' Start Example ',
      //home: Container()

      //home: Home(),

    // initialRoute: '/',
    //   routes: {
    //     '/': (context) => Home(),
    //     '/second_page': (context) => SecondPage(),
    //   },
      initialRoute: HOME_PAGE,
      routes: {
        HOME_PAGE: (context) => Home(),
        SECOND_PAGE: (context) => SecondPage(),
      },

      // home: routes345[HOME_PAGE](context),
      // routes: RouterPage,

      // 驗證跳轉頁面
      //home: SecondPage(),
    );
  }

}

// //  自己管理 state
// class TapboxA extends StatefulWidget {
//   TapboxA({Key? key}): super(key: key);
//   @override
//   TapboxAState createState() => TapboxAState();
// }
//
// class TapboxAState extends State<TapboxA> {
//   bool selfState = true;
//   void handleTap(){
//     setState(() {
//       selfState = !selfState;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     //  GestureDetector 监听 事件
//     return GestureDetector(
//       onTap: handleTap,
//       child:Container(
//         child: Center(
//           child: Text(selfState?'Active':'UnActive'),
//         ),
//
//         width: 80.0,
//         height: 80.0,
//         decoration: BoxDecoration(
//           color: selfState  ? Colors.lightGreen[700] : Colors.grey[600],
//         ),
//       ),
//     );
//   }
// }
//
// //  父類管理 state
//
// class FatherTapbox extends StatefulWidget {
//   FatherTapbox({Key? key}):super(key:key);
//   @override
//   FatherTapboxState createState() => FatherTapboxState();
// }
//
// class FatherTapboxState extends State<FatherTapbox> {
//   bool FatherState = true;
//   void eventTop(bool value){
//     setState(() {
//       FatherState = value;
//     });
//   }
//   @override
//   Widget build(BuildContext context){
//     return  SizedBox(
//       //  控制物件
//       child: TapboxB(
//         active: FatherState,
//         onChanged: eventTop,
//       ),
//     );
//   }
// }
//
// class TapboxB extends StatelessWidget {
//   //  接收控制
//   TapboxB({Key? key, this.active=true,required this.onChanged ,}): super(key: key);
//   bool active;
//   ValueChanged<bool> onChanged;
//   void eventTap(){
//     onChanged(!active);
//   }
//   @override
//   Widget build(BuildContext context){
//     return GestureDetector(
//       onTap: eventTap,
//       child: Container(
//         child: Text(active ? 'Active': 'UnActive'),
//       ),
//     );
//   }
// }
//
// class FavoriteWidget extends StatefulWidget {
//   const FavoriteWidget({Key? key}) : super(key: key);
//   //(1) 自己管理 State
//   @override
//   _FavoriteWidgetState createState() => _FavoriteWidgetState();
// }
// class _FavoriteWidgetState extends State<FavoriteWidget> {
//   //(2)  要管控的狀態值
//   bool _isFavorited = true;
//   int _favoriteCount = 41;
//
//   void _toggleFavorite() {
//     //(4) 觸發的動作
//     setState(() {
//       if (_isFavorited) {
//         _favoriteCount -= 1;
//         _isFavorited = false;
//       } else {
//         _favoriteCount += 1;
//         _isFavorited = true;
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     //(3) 狀態對應的 widget (按鈕及文字) 及 觸發的動作
//     return Row(
//       children: [
//         Container(
//           child: IconButton(
//             icon: (_isFavorited
//                 ? const Icon(Icons.star)
//                 : const Icon(Icons.star_border)),
//             onPressed: _toggleFavorite,
//           ),
//         ),
//         Container(
//           child: Text('$_favoriteCount'),
//         ),
//
//       ],
//     );
//   }
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     Widget titleSection = Container(
//       padding: const EdgeInsets.all(32),
//       child: Row(
//         children: [
//           Expanded(
//             /*1*/
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 /*2*/
//                 Container(
//                   padding: const EdgeInsets.only(bottom: 8),
//                   child: const Text(
//                     'Oeschinen Lake Campground',
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 Text(
//                   'Kandersteg, Switzerland',
//                   style: TextStyle(
//                     color: Colors.grey[500],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           /*3*/
//           const FavoriteWidget(),
//
//           // Icon(
//           //   Icons.star,
//           //   color: Colors.red[500],
//           // ),
//           // const Text('41'),
//         ],
//       ),
//     );
//
//     Color color = Theme.of(context).primaryColor;
//
//     Widget buttonSection = Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         FatherTapbox(),
//         _buildButtonColumn(color, Icons.call, 'CALL'),
//         _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
//         _buildButtonColumn(color, Icons.share, 'SHARE'),
//         TapboxA(),
//       ],
//     );
//
//     Widget textSection = const Padding(
//       padding: EdgeInsets.all(32),
//       child: Text(
//         'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
//             'Alps. Situated 1,578 meters above sea level, it is one of the '
//             'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
//             'half-hour walk through pastures and pine forest, leads you to the '
//             'lake, which warms to 20 degrees Celsius in the summer. Activities '
//             'enjoyed here include rowing, and riding the summer toboggan run.',
//         softWrap: true,
//       ),
//     );
//
//     return MaterialApp(
//       title: 'Flutter layout demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Flutter layout demo'),
//         ),
//         body: ListView(
//           children: [
//             Image.asset(
//               'images/lake.jpg',
//               width: 600,
//               height: 240,
//               fit: BoxFit.cover,
//             ),
//             titleSection,
//             buttonSection,
//             textSection,
//           ],
//         ),
//       ),
//     );
//   }
//
//   Column _buildButtonColumn(Color color, IconData icon, String label) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Icon(icon, color: color),
//         Container(
//           margin: const EdgeInsets.only(top: 8),
//           child: Text(
//             label,
//             style: TextStyle(
//               fontSize: 12,
//               fontWeight: FontWeight.w400,
//               color: color,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }