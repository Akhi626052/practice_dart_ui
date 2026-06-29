import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/item' : (context) => ItemScreen(),
        '/item_all' : (context) => ItemAllScreen(),
        '/home' : (context) => HomePage(),
      },
      // home: HomePage(),
    );
  }
}

// first screen
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(child: Text("data")),

          ElevatedButton(onPressed: (){

         Navigator.pushNamed(context, '/item');

          }, child: Text("Home Button")),

        ],
      ),
    );
  }
}
// second screen
class ItemScreen extends StatefulWidget {
  const ItemScreen({super.key});

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         ElevatedButton(onPressed: (){
           Navigator.pushNamed(context, '/item_all');

         }, child: Text("ItemScreen Button"))

        ],
      ),
    );
  }
}

// third screen
class ItemAllScreen extends StatefulWidget {
  const ItemAllScreen({super.key});

  @override
  State<ItemAllScreen> createState() => _ItemAllScreenState();
}
class _ItemAllScreenState extends State<ItemAllScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Text("Item All Screen"),
          ElevatedButton(onPressed: (){

               // Navigator.of(context).popUntil(
               //     ModalRoute.withName('/home')
               // );


               Navigator.of(context).push(MaterialPageRoute(
                 settings: RouteSettings(name: "/home"),
                 builder: (context) => HomePage(),
               ));

          }, child: Text("Item All Button")),
      // Navigator.popUntil(
      //   context,
      //   ModalRoute.withName('/home'),
      // ),



        ],
      ),
    );
  }
}

