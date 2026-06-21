import 'package:flutter/material.dart';
import 'package:practice_dart_ui/statelessstatefullwidget.dart';

import 'another_screen.dart';
void main(){
  runApp(DashboardScreen());

}
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardScreenApp(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        appBarTheme: AppBarTheme(
          color: Colors.yellow,

        ),
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            color: Colors.yellow,
          )
        )
      ),
    );
  }
}




class DashboardScreenApp extends StatefulWidget {
  const DashboardScreenApp({super.key});

  @override
  State<DashboardScreenApp> createState() => _DashboardScreenAppState();
}

class _DashboardScreenAppState extends State<DashboardScreenApp> {
  var name = TextEditingController();
  @override
  Widget build(BuildContext context) {  // ✅ HomePage ka address yah context me hai jo variable hai
    // Jab main bolta hoon:
    //
    // context = jis variable ko aap pass kar rahe ho us widget ka address
    //
    // to yahan variable se mera matlab ye hai:
    //
    // Widget build(BuildContext context)
    //
    // Yahan context ek variable hai.
    //
    // Flutter khud is variable me value daalta hai.

    return Scaffold(
      body: Column(
        children: [
       SizedBox(height: 100,),
        Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 1,color: Colors.red),
          ),
          width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Center(child: Text("DashBoard Screen",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),))),
          SizedBox(height: 11,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),

            child: TextField(
              textCapitalization: TextCapitalization.words,
              controller: name,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    width: 1, color: Colors.blue
                  )
                )
              ),

            ),
          ),
          SizedBox(height: 11,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text("Welcome..",style: TextStyle(color: Colors.black,fontSize: 34),),


              // ElevatedButton(onPressed: (){

                // Yahan context kis ka hai? 👉 HomePage ke build() method ka context.

                // Jab button click hota hai:

                // to Flutter ye nahi kehta:
                //
                // Main Button par hoon
                //
                // Balki kehta hai:
                //
                // Main HomePage ke context par hoon
                //
                // Phir wahan se upar Navigator dhoondhta hai.

                // Navigator.push(
                //     context, MaterialPageRoute(builder: (ctx){
                //      return DashBoardAnotherScreen(name.text.toString());
                // }),
                //
                //
                // );

                Builder(builder: (context){
                  return ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return DashBoardAnotherScreen(name.text.toString());
                    }));
                  }, child: Text("Next"));
                },),
                



              // }, child: Text("Button")),





            ],
          )




        ],
      ),
    );
  }
}

