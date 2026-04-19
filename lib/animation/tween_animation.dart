import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';
import 'package:practice_dart_ui/hero/hero_detail_page.dart';

void main(){
  runApp(TweenAnimationPage());
}
class TweenAnimationPage extends StatelessWidget {
  const TweenAnimationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TweenAnimationScreen(),
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
class TweenAnimationScreen extends StatefulWidget {
  const TweenAnimationScreen({super.key});

  @override
  State<TweenAnimationScreen> createState() => _HeroDetailScreenState();
}

class _HeroDetailScreenState extends State<TweenAnimationScreen> with SingleTickerProviderStateMixin{
late Animation animation;
late Animation colorAnimation;

late AnimationController animationController;
void initState(){
  super.initState();
  // Single take provider mixing
  animationController = AnimationController(vsync: this, duration: Duration(seconds: 10));
  animation = Tween(begin: 0.0, end: 200.0).animate(animationController);
  animationController.addListener((){
         print(animation.value);
         setState((){
         });
  });
  animationController.forward();


  // color animation
  colorAnimation = ColorTween(begin: Colors.blue,end: Colors.black).animate(animationController);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Flutter App",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Container(
             width: animation.value,
             height: animation.value,
          color: colorAnimation.value,
        ),
      ),);
  }
}
