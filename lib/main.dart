import 'package:flutter/material.dart ';
import 'package:flutter/rendering.dart';
void main(){
  runApp(FlutterApp());
}
class FlutterApp extends StatelessWidget{
@override
Widget build(BuildContext context){
return MaterialApp(
  debugShowCheckedModeBanner: false,
title: "Flutter App",
theme: ThemeData(
primaryColor: Colors.blue,

),
home: DashBoardScreen(),
);
}
}
class DashBoardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var arrName = ["Rahul","Sonam","Devi","Rahul","Harish","Pawan"];
    return Scaffold(
      // backgroundColor: Colors.blue,
     appBar: AppBar(
       backgroundColor: Colors.blue,
      title: Text("Flutter App",style: TextStyle(color: Colors.black),),
    ),

      body: Text(
        "Hello Akhilesh",
        style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 20,
          // fontWeight: FontWeight.w100,
        ),
      ),

      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //   Text("A",style: TextStyle(color: Colors.black,fontSize: 24),),
      //   Text("B",style: TextStyle(color: Colors.black,fontSize: 24),),
      //   Text("C",style: TextStyle(color: Colors.black,fontSize: 24),),
      //   Text("D",style: TextStyle(color: Colors.black,fontSize: 24),),
      //   Text("E",style: TextStyle(color: Colors.black,fontSize: 24),),
      // ],),


      // 35, 36
      // body: SingleChildScrollView(
      //   scrollDirection: Axis.vertical,
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           InkWell(
      //             onTap: (){
      //               print("On Tap");
      //             },
      //             onLongPress: (){
      //               print("On Long Press");
      //             },
      //             onDoubleTap: (){
      //               print("Double Tap");
      //             },
      //             child: Container(
      //               margin: EdgeInsets.all(10),
      //               height: 200,
      //               decoration: BoxDecoration(
      //                   color: Colors.amber,
      //                   border: Border.all(width: 2, color: Colors.red),
      //                   borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10), bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
      //                   boxShadow: [
      //                     BoxShadow(
      //                       blurRadius: 2,
      //                       spreadRadius: 3,
      //                       color: Colors.black,
      //                     ),
      //                   ]
      //               ),
      //             ),
      //           ),
      //
      //
      //
      //
      //           // 2
      //           Container(
      //             height: 200,
      //             margin: EdgeInsets.only(right: 10, bottom: 10, left: 10,top: 10),
      //             decoration: BoxDecoration(
      //                 color: Colors.pink,
      //                 border: Border.all(width: 2, color: Colors.red),
      //                 borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
      //                 boxShadow: [
      //                   BoxShadow(
      //                       blurRadius: 2,
      //                       spreadRadius: 3,
      //                       color: Colors.black
      //                   ),
      //                 ]
      //             ),
      //           ),
      //           // 3
      //           Container(
      //             height: 200,
      //             margin: EdgeInsets.only(bottom: 10, right: 10, left: 10,top: 10),
      //             decoration: BoxDecoration(
      //                 color: Colors.deepOrangeAccent,
      //                 border: Border.all(color: Colors.red, width: 2),
      //                 borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10),bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
      //                 boxShadow: [
      //                   BoxShadow(
      //                       blurRadius: 2,
      //                       spreadRadius: 3,
      //                       color: Colors.black
      //                   )
      //                 ]
      //             ),
      //           ),
      //           Container(
      //             height: 200,
      //             margin: EdgeInsets.only(bottom: 10,right: 10,left: 10,top: 10),
      //             decoration: BoxDecoration(
      //                 color: Colors.green,
      //                 border: Border.all(color: Colors.red, width: 2),
      //                 borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10), bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
      //                 boxShadow: [
      //                   BoxShadow(
      //                       blurRadius: 3,
      //                       spreadRadius: 4,
      //                       color: Colors.black
      //                   )
      //                 ]
      //             ),
      //           ),
      //
      //           Container(
      //             height: 200,
      //             margin: EdgeInsets.only(bottom: 10,right: 10,left: 10,top: 10),
      //             decoration: BoxDecoration(
      //                 color: Colors.deepPurple,
      //                 border: Border.all(color: Colors.red, width: 2),
      //                 borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10), bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
      //                 boxShadow: [
      //                   BoxShadow(
      //                       blurRadius: 3,
      //                       spreadRadius: 4,
      //                       color: Colors.black
      //                   )
      //                 ]
      //             ),
      //           ),
      //
      //           Container(
      //             height: 200,
      //             margin: EdgeInsets.only(bottom: 10,right: 10,left: 10,top: 10),
      //             decoration: BoxDecoration(
      //                 color: Colors.indigo,
      //                 border: Border.all(color: Colors.red, width: 2),
      //                 borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10), bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
      //                 boxShadow: [
      //                   BoxShadow(
      //                       blurRadius: 3,
      //                       spreadRadius: 4,
      //                       color: Colors.black
      //                   )
      //                 ]
      //             ),
      //           ),
      //
      //           Container(
      //             height: 200,
      //             margin: EdgeInsets.only(bottom: 10,right: 10,left: 10,top: 10),
      //             decoration: BoxDecoration(
      //                 color: Colors.pink,
      //                 border: Border.all(color: Colors.red, width: 2),
      //                 borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10), bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
      //                 boxShadow: [
      //                   BoxShadow(
      //                       blurRadius: 3,
      //                       spreadRadius: 4,
      //                       color: Colors.black
      //                   )
      //                 ]
      //             ),
      //           ),
      //
      //           Container(
      //             height: 200,
      //             margin: EdgeInsets.only(bottom: 10,right: 10,left: 10,top: 10),
      //             decoration: BoxDecoration(
      //                 color: Colors.purpleAccent,
      //                 border: Border.all(color: Colors.red, width: 2),
      //                 borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10), bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
      //                 boxShadow: [
      //                   BoxShadow(
      //                       blurRadius: 3,
      //                       spreadRadius: 4,
      //                       color: Colors.black
      //                   )
      //                 ]
      //             ),
      //           ),
      //
      //           Container(
      //             height: 200,
      //             margin: EdgeInsets.only(bottom: 10,right: 10,left: 10,top: 10),
      //             decoration: BoxDecoration(
      //                 color: Colors.blue,
      //                 border: Border.all(color: Colors.red, width: 2),
      //                 borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10), bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
      //                 boxShadow: [
      //                   BoxShadow(
      //                       blurRadius: 3,
      //                       spreadRadius: 4,
      //                       color: Colors.black
      //                   )
      //                 ]
      //             ),
      //           ),
      //
      //
      //
      //           Container(
      //             height: 200,
      //             margin: EdgeInsets.only(right: 10, bottom: 10, left: 10,top: 10),
      //             decoration: BoxDecoration(
      //                 color: Colors.blue,
      //                 border: Border.all(width: 2, color: Colors.red),
      //                 borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
      //                 boxShadow: [
      //                   BoxShadow(
      //                       blurRadius: 2,
      //                       spreadRadius: 3,
      //                       color: Colors.black
      //                   ),
      //                 ]
      //             ),
      //           ),
      //           // 3
      //           Container(
      //             height: 200,
      //             margin: EdgeInsets.only(bottom: 10, right: 10, left: 10,top: 10),
      //             decoration: BoxDecoration(
      //                 color: Colors.deepOrangeAccent,
      //                 border: Border.all(color: Colors.red, width: 2),
      //                 borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10),bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
      //                 boxShadow: [
      //                   BoxShadow(
      //                       blurRadius: 2,
      //                       spreadRadius: 3,
      //                       color: Colors.black
      //                   )
      //                 ]
      //             ),
      //           ),
      //           Container(
      //             height: 200,
      //             margin: EdgeInsets.only(bottom: 10,right: 10,left: 10,top: 10),
      //             decoration: BoxDecoration(
      //                 color: Colors.green,
      //                 border: Border.all(color: Colors.red, width: 2),
      //                 borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10), bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
      //                 boxShadow: [
      //                   BoxShadow(
      //                       blurRadius: 3,
      //                       spreadRadius: 4,
      //                       color: Colors.black
      //                   )
      //                 ]
      //             ),
      //           ),
      //
      //           Container(
      //             height: 200,
      //             margin: EdgeInsets.only(bottom: 10,right: 10,left: 10,top: 10),
      //             decoration: BoxDecoration(
      //                 color: Colors.deepPurple,
      //                 border: Border.all(color: Colors.red, width: 2),
      //                 borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10), bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
      //                 boxShadow: [
      //                   BoxShadow(
      //                       blurRadius: 3,
      //                       spreadRadius: 4,
      //                       color: Colors.black
      //                   )
      //                 ]
      //             ),
      //           ),
      //
      //           Container(
      //             height: 200,
      //             margin: EdgeInsets.only(bottom: 10,right: 10,left: 10,top: 10),
      //             decoration: BoxDecoration(
      //                 color: Colors.indigo,
      //                 border: Border.all(color: Colors.red, width: 2),
      //                 borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10), bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
      //                 boxShadow: [
      //                   BoxShadow(
      //                       blurRadius: 3,
      //                       spreadRadius: 4,
      //                       color: Colors.black
      //                   )
      //                 ]
      //             ),
      //           ),
      //
      //           Container(
      //             height: 200,
      //
      //             margin: EdgeInsets.only(bottom: 10,right: 10,left: 10,top: 10),
      //             decoration: BoxDecoration(
      //                 color: Colors.pink,
      //                 border: Border.all(color: Colors.red, width: 2),
      //                 borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10), bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
      //                 boxShadow: [
      //                   BoxShadow(
      //                       blurRadius: 3,
      //                       spreadRadius: 4,
      //                       color: Colors.black
      //                   )
      //                 ]
      //             ),
      //           ),
      //
      //           Container(
      //             height: 200,
      //
      //             margin: EdgeInsets.only(bottom: 10,right: 10,left: 10,top: 10),
      //             decoration: BoxDecoration(
      //                 color: Colors.purpleAccent,
      //                 border: Border.all(color: Colors.red, width: 2),
      //                 borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10), bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
      //                 boxShadow: [
      //                   BoxShadow(
      //                       blurRadius: 3,
      //                       spreadRadius: 4,
      //                       color: Colors.black
      //                   )
      //                 ]
      //             ),
      //           ),
      //
      //           Container(
      //             height: 200,
      //
      //             margin: EdgeInsets.only(bottom: 10,right: 10,left: 10,top: 10),
      //             decoration: BoxDecoration(
      //                 color: Colors.blue,
      //                 border: Border.all(color: Colors.red, width: 2),
      //                 borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10), bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
      //                 boxShadow: [
      //                   BoxShadow(
      //                       blurRadius: 3,
      //                       spreadRadius: 4,
      //                       color: Colors.black
      //                   )
      //                 ]
      //             ),
      //           ),
      //
      //
      //
      //
      //         ],
      //       ),
      //
      // ),
      //
      //




      // body: ListView.separated(itemBuilder: (context, index){
      //   return Text("Hello  World", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),);
      // },
      //   itemCount: 10,
      //   // itemExtent: 50,
      //   scrollDirection: Axis.vertical,
      //   separatorBuilder: (context, index){
      //   return Divider(height: 1,thickness: 1,);
      //
      //   }
      // ),


    // Column( // 40 decoration and boxShadow, blurRadius, spreadRadius
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   crossAxisAlignment: CrossAxisAlignment.center, // stretch
    //   children: [
    //     Center(
    //       child: Container(
    //       width: 200,height: 200,
    //         margin: EdgeInsets.all(10),
    //         decoration: BoxDecoration(
    //           color: Colors.blueGrey,
    //           border: Border.all(width: 2, color: Colors.blue),
    //           // borderRadius: BorderRadius.all(Radius.circular(11))
    //           //  borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(11), bottomLeft: Radius.circular(11),bottomRight: Radius.circular(11)),
    //           //  borderRadius: BorderRadius.all(Radius.elliptical(20, 30)),
    //           borderRadius: BorderRadius.circular(20),
    //           boxShadow : [
    //             BoxShadow(
    //               blurRadius: 10,
    //               spreadRadius: 1,
    //               color: Colors.red
    //             )
    //           ]
    //         ),
    //       ),
    //     ),
    //   ],
    // ),


      // Column( // 42 margin and padding
      //   children: [
      //     Container(
      //         color: Colors.blueGrey,
      //         margin: EdgeInsets.only(top: 20,left: 20),
      //         child: Padding(
      //             padding: EdgeInsets.all(10),
      //             child: Text("Hello World",style: TextStyle(color: Colors.white),)))
      //   ],
      // )
      // Row( // 41 Expanded
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Expanded(child: Container(width: 50,height: 100,color: Colors.blue,)),
      //     Expanded(child: Container(width: 50,height: 100,color: Colors.orangeAccent,)),
      //     Expanded(child: Container(width: 50,height: 100,color: Colors.red,)),
      //     Expanded(child: Container(width: 50,height: 100,color: Colors.pink,)),
      //
      //   ],
      // )
    );
  }
}