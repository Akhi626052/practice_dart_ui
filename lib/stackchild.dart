import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';

void main(){
  runApp(DashboardScreenStack());
}
class DashboardScreenStack extends StatelessWidget {
  const DashboardScreenStack({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StackScreen(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        appBarTheme: AppBarTheme(
          color: Colors.black
        ),
        textTheme: TextTheme(
           headlineLarge: TextStyle(color: Colors.black, fontSize: 22,fontWeight: FontWeight.bold),

        ),
      ),
    );
  }
}
class StackScreen extends StatefulWidget {
  const StackScreen({super.key});

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 300,height: 300,
        child: Stack(
          children: [
        
            Container(height: 200,width: 200,color: Colors.blueGrey,),
            Positioned(
                top: 21,left: 21,
                child: Container(height: 160,width: 160,color: Colors.grey,))
        
        
          ],
        ),
      ),
    );
  }
}

