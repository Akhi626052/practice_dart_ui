import 'package:flutter/material.dart';

void main(){
  runApp(PyApp());
}
class PyApp extends StatelessWidget{
  PyApp({super.key});
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget{
  MyHomePage({super.key});
  State<MyHomePage> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage>{
  int _currentIndex = 0;
  List<Widget> _page = [
     Center(child: Text("Home")),
     Center(child: Text("Heart")),
     Center(child: Text("History")),
     Center(child: Text("Profile")),

  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: _page[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
          onTap: (index){
          print(index);
          setState(() {
            _currentIndex = index;
          });
          },
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          backgroundColor: Colors.blue,
          type: BottomNavigationBarType.fixed,
          elevation: 2,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.heart_broken, color: Colors.black,), label: "Heart"),
        BottomNavigationBarItem(icon: Icon(Icons.history, color: Colors.black,), label: "History"),
        BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.black,), label: "Profile"),
      ]),
    );
  }
}