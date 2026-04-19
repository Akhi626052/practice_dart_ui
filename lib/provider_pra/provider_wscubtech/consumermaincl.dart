import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_dart_ui/provider_pra/provider_wscubtech/counter_provider.dart';
import 'package:practice_dart_ui/provider_pra/provider_wscubtech/list_map_provider.dart';
import 'package:practice_dart_ui/provider_pra/provider_wscubtech/list_page.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
      MultiProvider(

          providers: [
            ChangeNotifierProvider(create: (context) => ListMapProvider()),
            ChangeNotifierProvider(create: (context) => CounterProvider()),
          ],
          child: MyProviderApp())

  );
}
class MyProviderApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: ChangeNotifierProvider(
      //     create: (context) => ListMapProvider(),//CounterProvider(),
      //
      //     child: ListPage()//MyProviderScreen()),
      // )


      // home: MultiProvider(providers: [
      //   ChangeNotifierProvider(create: (context) => ListMapProvider()),
      //   ChangeNotifierProvider(create: (context) => CounterProvider()),
      //
      // ],
      // child: ListPage(),
      // ),

      home: ListPage(),
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
        Consumer(builder: (ctx,_,__){
          print("Consumer build function called!!");
          // return Text("${Provider.of<CounterProvider>(ctx, listen: true).getCount()}",style: TextStyle(color: Colors.black, fontSize: 22),);
          return Text("${ctx.watch<CounterProvider>().getCount()}",style: TextStyle(color: Colors.black, fontSize: 22),);
        })

        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){

        // Provider.of<CounterProvider>(context,listen: false).increment();
        context.read<CounterProvider>().increment();

      },child: Icon(Icons.add),),


    );
  }
}