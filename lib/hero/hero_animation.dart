import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';
import 'package:practice_dart_ui/hero/hero_detail_page.dart';

void main(){
  runApp(HeroPage());
}
class HeroPage extends StatelessWidget {
  const HeroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HeroScreen(),
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
class HeroScreen extends StatefulWidget {
  const HeroScreen({super.key});

  @override
  State<HeroScreen> createState() => _HeroDetailScreenState();
}

class _HeroDetailScreenState extends State<HeroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HeroDetailPage()));
              },
              child: Hero(tag: 'background', child: Image.asset('assets/images/profile.png',height: 100,width: 150,))),
        ],
      ),
    );
  }
}
