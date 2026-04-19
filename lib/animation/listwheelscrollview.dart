import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';
import 'package:practice_dart_ui/hero/hero_detail_page.dart';

void main(){
  runApp(ListWheelPage());
}
class ListWheelPage extends StatelessWidget {
  const ListWheelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListWheelScrollviewScreen(),
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
class ListWheelScrollviewScreen extends StatefulWidget {
  const ListWheelScrollviewScreen({super.key});

  @override
  State<ListWheelScrollviewScreen> createState() => _HeroDetailScreenState();
}

class _HeroDetailScreenState extends State<ListWheelScrollviewScreen> {
  var arrIndex = [1,2,3,4,5,6,7,8,9,10];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListWheelScrollView(
          
          itemExtent: 100,
          children: arrIndex.map((value) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Center(child: Text('$value',style: TextStyle(fontSize: 22),)),
              width: double.infinity,height: 100,color: Colors.indigo,

            ),
          )).toList(),

        //   children: [
        //
        //   Container(margin: EdgeInsets.symmetric(vertical: 10) ,width: 200,height: 100,color: Colors.blue,),
        //   Container(margin: EdgeInsets.symmetric(vertical: 10) ,width: 200,height: 100,color: Colors.brown,),
        //   Container(margin: EdgeInsets.symmetric(vertical: 10) ,width: 200,height: 100,color: Colors.deepOrange,),
        //   Container(margin: EdgeInsets.symmetric(vertical: 10) ,width: 200,height: 100,color: Colors.cyan,),
        //   Container(margin: EdgeInsets.symmetric(vertical: 10) ,width: 200,height: 100,color: Colors.red,),
        //   Container(margin: EdgeInsets.symmetric(vertical: 10) ,width: 200,height: 100,color: Colors.tealAccent,),
        //   Container(margin: EdgeInsets.symmetric(vertical: 10) ,width: 200,height: 100,color: Colors.deepPurple,),
        //   Container(margin: EdgeInsets.symmetric(vertical: 10) ,width: 200,height: 100,color: Colors.indigo,),
        // ],


        ),
      )
    );
  }
}
