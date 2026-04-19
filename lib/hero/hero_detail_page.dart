import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';

// void main(){
//   runApp(HeroDetailPage());
// }
class HeroDetailPage extends StatelessWidget {
  const HeroDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HeroDetailScreen(),
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
class HeroDetailScreen extends StatefulWidget {
  const HeroDetailScreen({super.key});

  @override
  State<HeroDetailScreen> createState() => _HeroDetailScreenState();
}

class _HeroDetailScreenState extends State<HeroDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Hero(tag: 'background', child: Image.asset('assets/images/profile.png'))
        ],
      ),
    );
  }
}
