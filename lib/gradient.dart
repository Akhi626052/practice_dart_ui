import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';
import 'package:practice_dart_ui/hero/hero_detail_page.dart';

void main(){
  runApp(GradientPage());
}
class GradientPage extends StatelessWidget {
  const GradientPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GradientScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              color: Colors.blue
          ),
          textTheme: TextTheme(
            labelLarge: TextStyle(
                color: Colors.indigo,
                fontSize: 15
            ),
          )

      ),
    );
  }
}
class GradientScreen extends StatefulWidget {
  const GradientScreen({super.key});

  @override
  State<GradientScreen> createState() => _HeroDetailScreenState();
}

class _HeroDetailScreenState extends State<GradientScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Flutter App",style: TextStyle(color: Colors.white,fontSize: 22),)),
        backgroundColor: Colors.orange,
      ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//               colors: [
//                 // Colors.orange.shade100,
//                 // Colors.purple.shade100,
//                 // Colors.brown.shade100
// // webgradient
//                 Color(0xffff9a9e),
//                 Color(0xffFAD0C4),
//                 Color(0xffFAD0C4),
//
//               ],
//             // 00,10,01,11
//             begin: FractionalOffset(1.0, 0.0),
//             end: FractionalOffset(0.0, 1.0),
//             stops: [0.0, 0.4, 1.0],
//             // stops: [0.0, 0.1, 1.0],
//           ),
//         ),
//       ),


      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              // Colors.orange.shade100,
              // Colors.purple.shade100,
              // Colors.brown.shade100
// webgradient
              Color(0xffff9a9e),
              Color(0xffFAD0C4),
              // Color(0xffFAD0C4),

            ],

      center: Alignment.bottomCenter, // topLeft, bottomCenter
            // stops: [0.0, 0.4, 1.0],
            // stops: [0.0, 0.1, 1.0],
          ),
        ),
      ),


    );
  }
}
