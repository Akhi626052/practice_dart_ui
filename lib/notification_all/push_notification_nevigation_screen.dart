import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(

    home: PushNavigationScreen(),
  ));
}

class PushNavigationScreen extends StatelessWidget{
  const PushNavigationScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Push Notification Navigation"),),
      body: Center(child: Text("This is the screen opened by push notification"),),
    );
  }
}