import 'package:flutter/material.dart';
void main(){
  runApp(DashboardScreenApp());
}
class DashboardScreenApp extends StatelessWidget {
  const DashboardScreenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StateFullApp(title: 'Flutter App'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          color: Colors.orange,
        ),
        textTheme: TextTheme(
          labelSmall: TextStyle(),
        )
      ),
    );
  }
}


class StateFullApp extends StatefulWidget {
  final String title;

  const StateFullApp({super.key, required this.title});

  @override
  State<StateFullApp> createState() => _StateFullAppState();
}

class _StateFullAppState extends State<StateFullApp> {
  int _counter = 0;
  void initState(){
    super.initState();
  }
  void _incrementCounter(){
    setState(() {
      _counter++;
    });

  }
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("Call Build Function ");
    return Scaffold(
      body: Column(
        children: [
          Text("Count vlue: ${_counter}"),
          ElevatedButton(onPressed: _incrementCounter,

              child: Text("data"))


        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

   return MyHomeState();

  }

}

class MyHomeState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Stateful Widget'),),
      body: Center(
        child: Column(
          children: [

Text('Counter'),
            ElevatedButton(onPressed: (){
              
            }, child: Text("Increment Count"))

            
          ],
        ),
      ),
    );

  }

}