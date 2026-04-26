import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';

void main(){
  runApp(PyApp());
}
class PyApp extends StatelessWidget{
const PyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaymentScreen(),
      // home: MyHomePage(),
    );
  }
}
class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  List<String> ls = ["A","B","C","D"];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Column(
       children :[
         SizedBox(height: 20,),
        // spread operator
         ...ls.map((item){
           return Padding(
             padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
             child: TextField(
             decoration: InputDecoration(
             labelText: item,
                border: OutlineInputBorder()
             ),
             ),
           );
         }),
         ElevatedButton(onPressed: (){

         }, child: Text("Submit Button")),



]
     ),
       bottomNavigationBar: Container(
         height: 50,
         color: Colors.black,
         child: Center(child: Text("This is bottom navigation", style: TextStyle(color: Colors.white),)),
       ),


     bottomSheet: Container(
       color: Colors.blue,width: 200, height: 200,
     ),
   );
  }
}



