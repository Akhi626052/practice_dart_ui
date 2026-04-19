import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';

void main(){
  runApp(DashBoardScreenCallback());
}
class DashBoardScreenCallback extends StatelessWidget {
  const DashBoardScreenCallback({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CallBackScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        appBarTheme: AppBarTheme(
          color: Colors.black,

        ),
        textTheme: TextTheme(
          headlineLarge: TextStyle(color: Colors.black)
        )
      ),
    );
  }
}
class CallBackScreen extends StatefulWidget {
  const CallBackScreen({super.key});

  @override
  State<CallBackScreen> createState() => _CallBackScreenState();
}

class _CallBackScreenState extends State<CallBackScreen> {
  void callBack(){


    print("Click!!");
  }// not bind

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          ElevatedButton(onPressed: callBack, child: Text("Press"))

        ],
      ),
    );
  }
}
