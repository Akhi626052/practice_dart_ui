import 'dart:async';

import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCounterAppWithStream(),
    );
  }
}
class MyCounterAppWithStream extends StatefulWidget{
  @override
  State<MyCounterAppWithStream> createState() => MyCounterAppStream();
}
class MyCounterAppStream extends State<MyCounterAppWithStream>{
  int counter = 0;
  StreamController<int> controllerStream = StreamController<int>();
  @override
  void dispose(){
    controllerStream.close();
    super.dispose();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: StreamBuilder(
        stream: controllerStream.stream,
        builder: (context, snapshot){
          if(snapshot.hasData){
            return Text(snapshot.data.toString(),style: TextStyle(fontSize: 40),);
          }else{
            return Text("0",style: TextStyle(fontSize: 40));
          }

        }),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){

        counter++;
        controllerStream.sink.add(counter);

      },child: Icon(Icons.add),),
    );
  }
}