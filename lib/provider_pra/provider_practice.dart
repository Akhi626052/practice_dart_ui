import 'package:flutter/material.dart';
import 'package:practice_dart_ui/provider_pra/counter_provider.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(ChangeNotifierProvider(
      create: (context) => counterProvider(),
      child: MyPageScreen()));
}
class MyPageScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}
class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState(){
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp>{
  int counter = 0;
  inintState(){
    super.initState();
    print("MyApp initialized with counter value: $counter");
  }
  @override
  Widget build(BuildContext context){
    print("Building MyApp with counter value: $counter");
    return Scaffold(
      body: Column(
        children: [

          Consumer<counterProvider>(
            builder: (context, provider, child){
              return Text("counter value: ${provider.counter}",
              style: TextStyle(fontSize: 22),
              );
            },
              // child: Text("Counter value ${counter}")
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          context.read<counterProvider>().increment();
          // setState(() {
          //   counter++;
          // });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}