import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';

void main(){
  runApp(RippleEffectPage());
}
class RippleEffectPage extends StatelessWidget {
  const RippleEffectPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RippleEffectScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              color: Colors.blue
          ),
          textTheme: TextTheme(
            labelLarge: TextStyle(
                color: Colors.indigo,
                fontSize: 15
            ),
          )

      ),
    );
  }
}
class RippleEffectScreen extends StatefulWidget {
  const RippleEffectScreen({super.key});

  @override
  State<RippleEffectScreen> createState() => _HeroDetailScreenState();
}

class _HeroDetailScreenState extends State<RippleEffectScreen> with SingleTickerProviderStateMixin{
  late Animation<double> _animation;
  late AnimationController _animationController;
  @override
  void initState(){
      super.initState();
      _animationController = AnimationController(vsync: this, duration: Duration(seconds: 4));
      _animation = Tween(begin: 2.0, end: 10.0).animate(_animationController);
      _animationController.addListener((){
           setState(() {

           });

      });
      _animationController.forward();
  }

  var listRadius = [150,200,250,300,350];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Flutter App",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
         children: listRadius.map((radius){
           return Container(
              width: radius*_animation.value,
              height: radius*_animation.value,
             decoration: BoxDecoration(
               shape: BoxShape.circle,
                color: Colors.blue.withOpacity(1.0 - _animation.value)
               // color: Colors.blue.withOpacity(
               //
               //   (1.0 - (_animation.value / 10)).clamp(0.0, 1.0),
               // ),
 // 20 mint completed

             ),

           );
         }).toList(),
        ),
      ),);
  }
}
