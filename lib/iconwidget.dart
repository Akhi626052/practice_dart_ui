import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(IconWidgetApp());
}
class IconWidgetApp extends StatelessWidget {
  const IconWidgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IconPresentativeScreen(),
      title: "Home Screen",
      theme: ThemeData(
          primaryColor: Colors.black,
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
            color: Colors.blue,
          ),
          textTheme: TextTheme(
            headlineLarge: TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold
            ),

          )
      ),
    );
  }
}
class IconPresentativeScreen extends StatelessWidget {
  const IconPresentativeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(child: Icon(Icons.add,size: 50,color: Colors.orange,)),
          FaIcon(FontAwesomeIcons.amazon,size: 50,color: Colors.orangeAccent,),
        ],
      ),
    );
  }
}
