import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';

void main(){
  runApp(MyAppHome());
}
class MyAppHome extends StatelessWidget {
  const MyAppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCounterApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyCounterApp extends StatefulWidget{
  @override
  State<MyCounterApp> createState() => MyCounterAppState();
}
class MyCounterAppState extends State<MyCounterApp>{
  int count = 0;
  @override
  void initState(){
    super.initState();
  }
  @override
  void increment(){
    setState(() {
      count++;
    });

  }
  void decrement(){
    setState(() {
      count--;
    });
  }
  @override
  Widget build(BuildContext context){
    print(("Build Execute"));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Counter App Without Get-x"),
        titleTextStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Text(count.toString(),style: TextStyle(fontSize: 30),),
          SizedBox(height: 20,),
          ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 800,
                minWidth: MediaQuery.of(context).size.height,
              ),
              child: ElevatedButton(onPressed: increment, child: Text("Button Increment",style: TextStyle(fontSize: 22),))),

          SizedBox(height: 40,),



          ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 800,
                minWidth: MediaQuery.of(context).size.height,
              ),
              child: ElevatedButton(

                  onPressed: (){
                    if(count > 0){
                      decrement();
                    }

                  },

                  child: Text("Button decrement",style: TextStyle(fontSize: 22),))),

                  SizedBox(height: 40,),


        ],
      ),
    );
  }
}
