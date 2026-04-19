import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_dart_ui/provider_pra/provider_wscubtech/counter_provider.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyProviderApp());
}
class MyProviderApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: ChangeNotifierProvider(
          create: (context) => CounterProvider(),
            child: MyProviderScreen()),

    );
  }
}
class MyProviderScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    print("Build function called for MyProviderScreen");
    return Scaffold(
      
      body: Column(
        children: [

          Text("${Provider.of<CounterProvider>(context,listen: true).getCount()}",style: TextStyle(color: Colors.black, fontSize: 22),),
          
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        
        Provider.of<CounterProvider>(context,listen: false).increment();
        
      },child: Icon(Icons.add),),
      
      
    );
  }
}