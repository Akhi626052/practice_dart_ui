import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_dart_ui/getx/counter_app_with_getx/counter_controller.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  MyApp();
  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppCounterGetx(),
    );
  }
}

class CounterController extends GetxController{
  RxInt count = 0.obs;
  void increment(){
    count++;
  }
  void decrement(){
    count--;
  }
  void reset(){
    count.value = 0;
  }
}


class MyAppCounterGetx extends StatefulWidget {
  const MyAppCounterGetx({super.key});

  @override
  State<MyAppCounterGetx> createState() => _MyAppCounterGetxState();
}

class _MyAppCounterGetxState extends State<MyAppCounterGetx> {
  final CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Gets App Counter Demo"),backgroundColor: Colors.teal,
          titleTextStyle: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
        body:

        Obx(()=>Column(
          children: [


            SizedBox(height: 50,),
            Center(child: Text("${controller.count}",style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,),)),
          ],
        )),

        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: 50,),
            FloatingActionButton(onPressed: (){
              controller.increment();
            },child: Icon(Icons.add),),
            SizedBox(height: 10,),
            FloatingActionButton(onPressed: (){
              controller.decrement();
            },child: Icon(Icons.minimize),),
            SizedBox(height: 10,),
            FloatingActionButton(onPressed: (){
              controller.reset();
            },child: Icon(Icons.lock_reset),)
          ],
        )





    );
  }
}

