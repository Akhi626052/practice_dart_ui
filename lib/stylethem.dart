import 'package:flutter/material.dart ';
import 'package:practice_dart_ui/ui_helper/util.dart';
void main(){
  runApp(HomeScreen());
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter App",
      home: DashBoardScreenNew(),
      theme: ThemeData(
        primaryColor: Colors.blue,
            appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
      ),
        textTheme: TextTheme(
          headlineSmall: TextStyle(color: Colors.blue,fontSize: 21),
          headlineMedium: TextStyle(color: Colors.blue,fontSize: 21,fontFamily: 'Roboto',fontWeight: FontWeight.bold),
          headlineLarge: TextStyle(color: Colors.blue,fontSize: 21),

        )
      ),
    );
  }
}

class DashBoardScreenNew extends StatelessWidget {
  const DashBoardScreenNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Worlddddd"),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          Center(
            child: Card(
              shadowColor: Colors.yellow,
              elevation: 12,
                  child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text("Hello World",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 21),)),
            ),
          ),
        ],
      ),


      // body: Column(
      //   children: [
      //      Text("Data",style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.red)),
      //     Text("Data",style: Theme.of(context).textTheme.headlineMedium),
      //     Text("Data",style: Theme.of(context).textTheme.headlineLarge),
      //     Text("Data1",style: mTextStyle11()),
      //     Text("Data",style: mTextStyle(textColor: Colors.yellow, fontWeight: FontWeight.w900)),
      //   ],
      // ),




    );
  }
}

