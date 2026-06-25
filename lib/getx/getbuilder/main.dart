import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_dart_ui/getx/getbuilder/homecontroller.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetBuilderApp(),
    );
  }
}

class GetBuilderApp extends StatefulWidget{
  @override
  State<GetBuilderApp> createState() => GetBuilderAppState();

}
class GetBuilderAppState extends State<GetBuilderApp>{
  // final controller = Get.find<HomeController>();
  // final controller = Get.put(HomeController());
  // final controller = Get.lazyPut(() => HomeController());
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: GetBuilder<HomeController>(
        init: HomeController(),
          builder: (controller){

         return Center(child: Text("data: ${controller.count}",style: TextStyle(fontSize: 30),));


      }),
      floatingActionButton: FloatingActionButton(
      onPressed: (){

        // controller.increment();
        Get.find<HomeController>().increment();

      }, child: Icon(Icons.add),
      ),
    );
  }
}