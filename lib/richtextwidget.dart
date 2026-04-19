import 'package:flutter/material.dart';
void main(){
  runApp(RichtextApp());
}
class RichtextApp extends StatelessWidget {
  const RichtextApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardRichTextScreen(),
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
class DashboardRichTextScreen extends StatelessWidget {
  const DashboardRichTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RichText(
        text: TextSpan(
        style: TextStyle(
          color: Colors.brown,fontSize: 21
        ),
          children: <TextSpan>[
            TextSpan(
              text: ' Hello '
            ),
            TextSpan(
              text: 'World ',
              style: TextStyle(
                color: Colors.brown,fontSize: 30
              )
            ),

            TextSpan(
                text: 'Welcome: ',
                style: TextStyle(
                    color: Colors.blue,fontSize: 30
                )
            ),

            TextSpan(
                text: 'Akhilesh..',
                style: TextStyle(
                    color: Colors.red,fontSize: 30
                )
            ),


          ]
      ),


      ),
    );
  }
}
