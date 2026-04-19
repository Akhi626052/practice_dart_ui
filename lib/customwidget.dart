import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';
import 'package:practice_dart_ui/widgets/rounded_btn.dart';

void main(){
  runApp(DashBoardScreen());
}

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoardHomeScreen(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue,
        appBarTheme: AppBarTheme(
          color: Colors.black,
        ),
        textTheme: TextTheme(
          headlineLarge: TextStyle(color: Colors.black,fontSize: 21),
        )
      ),
    );
  }
}

class DashBoardHomeScreen extends StatelessWidget {
  const DashBoardHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
                width: 200,
                child: RoundedButton(btnName: "Login",
                  icon: Icon(Icons.lock,color: Colors.white,),
                  textStyle: TextStyle(color: Colors.white,fontSize: 22),
                  callBack: (){
                  print("Login in!!");
                  },
                  bgColor: Colors.blue,
                ),
              ),
            Container(width: 20,),
            Container(
              width: 200,
              child: RoundedButton(btnName: "Login",
                icon: Icon(Icons.lock,color: Colors.white,),
                textStyle: TextStyle(color: Colors.white,fontSize: 22),
                callBack: (){
                  print("Login in!!");
                },
                bgColor: Colors.blue,
              ),
            ),

          ],
        ),
      ),
      
      //
      // body: Container(
      //   margin: EdgeInsets.symmetric(horizontal: 10),
      //   child: Column(
      //     // crossAxisAlignment: CrossAxisAlignment.stretch,
      //     children: [
      //       ElevatedButton(onPressed: (){
      //       }, child: Text("Button")),
      //         // Container(
      //         //   margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      //
      //       // SizedBox(height: 20,),
      //       //     SizedBox( height: 50,width: double.infinity,
      //       //       child: ElevatedButton(
      //       //         style: ElevatedButton.styleFrom(
      //       //           // minimumSize: Size(double.infinity, 40),
      //       //           backgroundColor: Colors.grey,
      //       //           foregroundColor: Colors.white,
      //       //           padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      //       //           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4),),
      //       //         ),
      //       //           onPressed: (){}, child: Text("Login",style: TextStyle(fontSize: 21),),),
      //       //     ),
      //
      //         // )
      //     ],
      //   ),
      // ),
      //
      //
      
    );
  }
}
