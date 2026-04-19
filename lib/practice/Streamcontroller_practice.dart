import 'dart:async';
import 'package:flutter/material.dart';

void main(){
  runApp(MyAppStream());
}
class MyAppStream extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}
class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp>{
  StreamController<int> controller = StreamController<int>();
 // Listener for stream data
  @override
 void initState() {
   super.initState();
   controller.stream.listen((data) {
     print("Stream data: $data"); // received data from stream
   });
   // Add data to the stream
   controller.add(1);
   controller.add(2);
   controller.add(3);
   // controller.close();
 }
 @override
 void dispose(){
   controller.close();
   super.dispose();
 }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
        StreamBuilder<int>(stream: controller.stream, builder: (context, snapshot){
          if(snapshot.hasData){
            return Text("Stream data: ${snapshot.data}");
          } else {
            return Text("No data in stream");
          }
        }),




        ],
      ),
    );
  }
}