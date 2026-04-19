import 'package:flutter/material.dart';
void main(){
  runApp(SizedboxAttributApp());
}
class SizedboxAttributApp extends StatelessWidget {
  const SizedboxAttributApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardSizedBoxScreen(),
      title: "Home Screen",
      theme: ThemeData(
          primaryColor: Colors.black,
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
            color: Colors.blue,
          ),
          textTheme: TextTheme(
            headlineLarge: TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold
            ),

          )
      ),
    );
  }
}
class DashboardSizedBoxScreen extends StatelessWidget {
  const DashboardSizedBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: SizedBox.square(
        dimension: 200,
        child: ElevatedButton(onPressed: (){}, 
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal,
              shape: RoundedRectangleBorder(

                borderRadius: BorderRadius.circular(10),
              )
            ),
            
            child: Text("Click",style: TextStyle(color: Colors.white,fontSize: 22),)),
      ),

      // body: ConstrainedBox(
      //   constraints: BoxConstraints(
      //     minHeight: 50,
      //     minWidth: 100,
      //     maxHeight: 80,
      //     maxWidth: 400
      //   ),
      //   child: SizedBox.shrink( // expand
      //     // width: 12,
      //     child: ElevatedButton(onPressed: (){},
      //       style: ElevatedButton.styleFrom(
      //         backgroundColor: Colors.blue,
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(2),
      //
      //       )
      //
      //       ),
      //        child: Text(
      //       "Click",style: TextStyle(color: Colors.white,fontSize: 22),
      //     )),
      //
      //   ),
      // )





      // body: Column(
      //   children: [
      //     // sized box sequare,expanded- menubali(parent),shrink(minimum parent width get), dimention- square shape wit,hight dena pare ga.
      //     // 22 by 22 sized box create
      //
      //   SizedBox(
      //     width: 200,height: 34,
      //     child: ElevatedButton(onPressed: (){}, child: Text("Button")),
      //   )
      //
      //   ],
      // ),



    );
  }
}
