import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_dart_ui/getx/getbuilder/homecontroller.dart';
void main(){
  // Get.put(HomeController()); agar ham init ka use na-hi kar-te hai
  // Get.lazyPut(() => HomeController());                                                    -
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetBuilderAppp(),
    );
  }
}

// 2
class GetBuilderAppp extends StatefulWidget{
  @override
  State<GetBuilderAppp> createState() => GetBuilderAppsState();

}
class GetBuilderAppsState extends State<GetBuilderAppp>{
  // final controller = Get.find<HomeController>();
  // final controller = Get.put(HomeController());
  // final controller = Get.lazyPut(() => HomeController());
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: GetBuilder<HomeController>(
          // init: HomeController(),
          builder: (controller){
            return Scaffold(
                body: Column(
                  children: [
                    Center(
                        child: Text("data: ${controller.count}",style: TextStyle(fontSize: 30),),
                    ),
                  ],
                ),
              floatingActionButton: FloatingActionButton(
                  onPressed: controller.increment


              ),
            );


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



// 1
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