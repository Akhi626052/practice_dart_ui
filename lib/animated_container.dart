import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: AnimatedContainerApp(),debugShowCheckedModeBanner: false,));
}

class AnimatedContainerApp extends StatefulWidget {
  const AnimatedContainerApp({super.key});

  @override
  State<AnimatedContainerApp> createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<AnimatedContainerApp> {
  var _width = 200.0;
  var _height = 100.0;
  bool flag = true;
  // Color bgColor = Colors.grey;
  Decoration myDecorated = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
       child: Column(
         children: [
           SizedBox(height: 200,),
           AnimatedContainer(

             //fast out slow Curve
             curve: Curves.bounceIn, // bounceOut,bounceInOut
             // curve: Curves.slowMiddle,
             // color: bgColor,
               width: _width,height: _height,
               duration: Duration(seconds: 2)),

           SizedBox(height: 50,),
           ElevatedButton(onPressed: (){
            // _width = 100.0;
            // _height = 200.0;
            setState((){
               if(flag){
                 _width = 100.0;
                 _height = 200.0;
                 flag = false;
                 // bgColor = Colors.orange;
                 myDecorated = BoxDecoration(
                   borderRadius: BorderRadius.circular(11),
                   color: Colors.orange,
                 );

               }else{
                  _width = 200.0;
                  _height = 100.0;
                 flag = true;
                 // bgColor = Colors.grey;
                 myDecorated = BoxDecoration(
                   borderRadius: BorderRadius.circular(11),
                   color: Colors.grey,
                 );
               }

            });
           }, child: Text("Animate"))



         ],





       ),
      ),

    );
  }
}
