import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';

void main(){
  runApp(MyHomePage());

}
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        textTheme: TextTheme(
          headlineLarge: TextStyle(color: Colors.yellow,fontSize: 21),
          headlineMedium: TextStyle(color: Colors.yellowAccent, fontSize: 22)
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,

        ),
      ),
    );
  }
}
class MyPage extends StatefulWidget {
  // const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black,width: 2)
              ),
              margin: EdgeInsets.all(10),
              width: 300,
              height: 300,
            ),
          )
        ],
      ),
    );
  }
}

