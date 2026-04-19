import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';

void main(){
  runApp(DashBoardSc());
}
class DashBoardSc extends StatelessWidget {
  const DashBoardSc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoardScreenHome(),
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        textTheme: TextTheme(
          labelLarge: TextStyle(color: Colors.blue),
          labelMedium: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 22),
          labelSmall: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 23),
        ),
        appBarTheme: AppBarTheme(
          color: Colors.black
        )
      ),
    );
  }
}

class DashBoardScreenHome extends StatelessWidget {
  const DashBoardScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.spaceEvenly,//center, spaceBetween, spaceEvenly
     spacing: 11,
      runSpacing: 11,
      children: [
        Container(
          color: Colors.orangeAccent,
          width: 100,height: 100,
        ),

        Container(
          color: Colors.red,
          width: 100,height: 100,
        ),

        Container(
          color: Colors.green,
          width: 100,height: 100,
        ),

        Container(
          color: Colors.blue,
          width: 100,height: 100,
        ),

        Container(
          color: Colors.green,
          width: 100,height: 100,
        ),

        Container(
          color: Colors.deepPurple,
          width: 100,height: 100,
        ),

        Container(
          color: Colors.purple,
          width: 100,height: 100,
        ),

        Container(
          color: Colors.teal,
          width: 100,height: 100,
        ),


        Container(
          color: Colors.yellow,
          width: 100,height: 100,
        ),

        Container(
          color: Colors.red,
          width: 100,height: 100,
        ),

        Container(
          color: Colors.indigo,
          width: 100,height: 100,
        ),

        Container(
          color: Colors.grey,
          width: 100,height: 100,
        ),

      ],
    );
  }
}
