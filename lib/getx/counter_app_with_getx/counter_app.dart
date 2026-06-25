import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';
import 'package:get/get.dart';
import 'package:practice_dart_ui/getx/counter_app_with_getx/counter_controller.dart';

void main(){
  Get.put(CounterController()); // Get.put() → Controller memory me register karta hai.
  runApp(MyAppCounter());
}
class MyAppCounter extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppGetxCounter(),
      theme: ThemeData(
        primaryColor: Colors.tealAccent
      ),
    );
  }
}
class MyAppGetxCounter extends StatefulWidget {
  const MyAppGetxCounter({super.key});

  @override
  State<MyAppGetxCounter> createState() => _MyAppGetxCounterState();
}

class _MyAppGetxCounterState extends State<MyAppGetxCounter> {
final controller = Get.find<CounterController>();
  // RxInt count = 0.obs;
  // RxInt coun = RxInt(0);
  @override
  void initState(){
    super.initState();
  }
  // @override
  // void increment(){
  //   count++;
  // }
  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
          children: [

            SizedBox(height: 50,),
            Obx(() => Text("${controller.count}",style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),)),

            ElevatedButton(onPressed: controller.increment, child: Text("Increment Button")),

            ElevatedButton(onPressed: (){

              if(controller.count > 0){
                controller.decrement();
              }

            }, child: Text("decrement Button"))

          ],

      ),
    );
  }
}
