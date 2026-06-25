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
    return GetMaterialApp(
      home: MyNavigatorScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyNavigatorScreen extends StatefulWidget{
  @override
  State<MyNavigatorScreen> createState() => MyNavigatorScreenState();
}
class MyNavigatorScreenState extends State<MyNavigatorScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 40,),
          GestureDetector(
            onTap: (){
              print("Click Success Fully");
              Get.to(HomeScreen());
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black,
                border: Border.all(width: 1, color: Colors.orange),
                borderRadius: BorderRadius.circular(10)
              ),
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Text("Navigate First Screen",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
            ),
          ),
          SizedBox(height: 10,),


        ],
      ),
    );
  }
}
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Welcome screen"),
        backgroundColor: Colors.orange,
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            // Navigator.pop(context);
            Get.back();
          },icon: Icon(Icons.keyboard_backspace),
        ),
        titleSpacing: 10,
        actions: [
          // Icon(Icons.more_vert)

        ],
      ),
      body: Column(
        children: [

          SizedBox(height: 40,),
          GestureDetector(
            onTap: (){
              Get.back();
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                  color: Colors.black,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: Colors.teal)
              ),
              child: Center(child: Text("Welcome Akhilesh..",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)),
            ),
          )

        ],
      ),
    );
  }
}