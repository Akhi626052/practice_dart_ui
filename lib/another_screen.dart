import 'package:flutter/material.dart';
import 'package:practice_dart_ui/statelessstatefullwidget.dart';
// void main(){
//   runApp(AnotherScreen());
//
// }
// class AnotherScreen extends StatelessWidget {
//   const AnotherScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: DashBoardAnotherScreen(),
//       theme: ThemeData(
//           primarySwatch: Colors.yellow,
//           appBarTheme: AppBarTheme(
//             color: Colors.yellow,
//
//           ),
//           textTheme: TextTheme(
//               headlineLarge: TextStyle(
//                 color: Colors.yellow,
//               )
//           )
//       ),
//     );
//   }
// }


class DashBoardAnotherScreen extends StatelessWidget {
  // const DashBoardAnotherScreen({super.key});
  var nameFromHome;
  DashBoardAnotherScreen(this.nameFromHome);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Container(width: 200,height: 200,color: Colors.blue,),
          SizedBox(height: 100,),
          Text("Welcome..${nameFromHome}",style: TextStyle(color: Colors.black,fontSize: 34),),
          ElevatedButton(onPressed: (){
            // Navigator.push(context, MaterialPageRoute(builder: (context){
            //   return AnotherScreen();
            // }));
          }, child: Text("Button")),
        ],
      ),
    );
  }
}
