import 'package:flutter/material.dart';
void main(){
  runApp(MyAppDm());
}

class MyAppDm extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppDmFlst(),
    );
  }
}


class MyAppDmFlst extends StatefulWidget with WidgetsBindingObserver{

  State<MyAppDmFlst> createState() => StateMyAppDmFlst();

}
class StateMyAppDmFlst extends State<MyAppDmFlst>{
  @override
  void initState(){
    // super.initState();
  }
  @override
  void didChangeDependencies(){

  }
  @override
  void deactivate(){

  }
  @override
  void dispose(){

  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Ful-stateWidget"),
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),

        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              SizedBox(height: 10,),
              Text("Data---------------------"),
              Text("Data---------------------"),
              Text("Data---------------------"),
              Text("Data---------------------"),
              Text("Data---------------------"),
              Text("Data---------------------"),
              Text("Data---------------------"),

              Text("Data---------------------"),
              Text("Data---------------------"),
              Text("Data---------------------"),
              Text("Data---------------------"),
              Text("Data---------------------"),
              Text("Data---------------------"),
              Text("Data---------------------"),

              Text("Data---------------------"),
              Text("Data---------------------"),
              Text("Data---------------------"),
              Text("Data---------------------"),
              Text("Data---------------------"),
              Text("Data---------------------"),
              Text("Data---------------------"),

              Text("Data---------------------"),
              Text("Data---------------------"),
              Text("Data---------------------"),
              Text("Data---------------------"),
              Text("Data---------------------"),
              Text("Data---------------------"),
              Text("Data---------------------"),


              Text("Data---------------------"),
              Text("Data---------------------"),
              Text("Data---------------------"),
              Text("Data---------------------"),
              Text("Data---------------------"),
              Text("Data---------------------"),
              Text("Data---------------------"),

              Text("Data---------------------"),
              Text("Data---------------------"),
              Text("Data---------------------"),
              Text("Data---------------------"),
              Text("Data---------------------"),
              Text("Data---------------------"),
              Text("Data---------------------"),
            ],
          ),
        ),
      ),
    );
  }
}