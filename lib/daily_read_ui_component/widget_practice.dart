import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: MyPracticeApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyPracticeApp extends StatefulWidget{
  @override
  State<MyPracticeApp> createState() => _StaticMyPracticeApp();
}
class _StaticMyPracticeApp extends State<MyPracticeApp>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("App Demo"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 15,
        titleTextStyle: TextStyle(
          fontSize: 25,
          color: Colors.white,
          shadows: [
            Shadow(
              color: Colors.red,
              blurRadius: 3,
              offset: Offset(2, 2),
            ),
            Shadow(
              color: Colors.blue,
              blurRadius: 3,
              offset: Offset(-2, -2),
            ),
          ],



        ),

      ),
      body: Column(
        children: [

         Container(

           margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
           height: 200, width: double.infinity,color: Colors.orange,
           alignment: Alignment.center,
           child: Text("Hello jdlfktfjleskjdgf kjdslkgfklas halkgjklvadsjfg hdsklgjlkasjdg jklajdgkjrdgkv ",
             style: TextStyle(
               fontSize: 20,
               color: Colors.white,
               fontWeight: FontWeight.bold,
               fontStyle: FontStyle.italic,
               letterSpacing: 2,
               wordSpacing: 2,
               height: 2,
               decoration: TextDecoration.underline,
               decorationStyle: TextDecorationStyle.dashed,
               backgroundColor: Colors.yellow,
               decorationColor: Colors.blue,
               shadows: [
                 Shadow(
                   color: Colors.black,
                   blurRadius: 4,
                   offset: Offset(2, 2),
                 ),
               ]
             ),


           key: Key("tx"),
           // maxLines: 1,
           // overflow: TextOverflow.ellipsis,// ellipsis,fade,clip,visible,
           softWrap: true,
           selectionColor: Colors.red,
             textAlign: TextAlign.center,
            textDirection: TextDirection.ltr,
            semanticsLabel: "500 Rupees",
            textWidthBasis: TextWidthBasis.longestLine,// parent
             textHeightBehavior: TextHeightBehavior(
               applyHeightToLastDescent: true,
               applyHeightToFirstAscent: true
             ),
             // textScaleFactor: 40,
             // textScaler: TextScaler.linear(2),
             // strutStyle: StrutStyle(
             //   fontSize: 20,
             //   height: 2
             // ),
             // locale: Locale("en","US"),
           ),


         ),


          Text(
            "❤️",
            semanticsLabel: "Heart",
          ),


          Text(
            "OTP",
            semanticsLabel: "One Time Password",
          ),

          Text(
            "₹1,299",
            semanticsLabel: "Price one thousand two hundred ninety nine rupees",
          ),

          Text(
            "OTP",
            semanticsLabel: "One Time Password",
          ),

          Text(
            "Hello Flutter",
            style: TextStyle(fontSize: 20),
            textScaler: TextScaler.linear(1.5),
            locale: Locale('en', 'US'),
            strutStyle: StrutStyle(
              height: 1.8,
            ),
          ),




          
          
        ],
      ),
    );
  }
}