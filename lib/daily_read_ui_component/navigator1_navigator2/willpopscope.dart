import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      // routes: {
      //   '/login': (context) => LoginScreen()
      // },
      debugShowCheckedModeBanner: false,
      home: WillPopScopeDemo(),
    );
  }
}

class WillPopScopeDemo extends StatefulWidget {
  const WillPopScopeDemo({super.key});

  @override
  State<WillPopScopeDemo> createState() => _WillPopScopeDemoState();
}

class _WillPopScopeDemoState extends State<WillPopScopeDemo> {

  Future<bool> willPopDialog() async{
     return await showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text("Confirm"),
        content: Text("would you like to go back"),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("No")),
          TextButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){

              return WillPopScopeDemo();

            }));
          }, child: Text("Yes")),
        ],
      );
    });

  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // onWillPop: () async{
      //   return Future.value(res);
      // },
      onWillPop: willPopDialog,
      child: Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){

                  }, child: Text("   Button  ",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    shadowColor: Colors.yellow,
                    alignment: Alignment.center,
                    elevation: 10,
                    side: BorderSide(
                      width: 1, color: Colors.black,
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,

                  ),
                  ),
                ),

            ],
          ),

      ),
    );
  }
}








// class HomeScr extends StatefulWidget{
//   HomeScr({super.key});
//   @override
//   State<HomeScr> createState() => HomeScrState();
// }
// class HomeScrState extends State<HomeScr>{
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(title: Text("Home Screen",style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//
//           Center(
//             child: ElevatedButton(onPressed: (){
//
//              // Navigator.of(context).pushNamed("/login");
//
//              Navigator.of(context).push(
//                  MaterialPageRoute(builder: (context) => LoginScreen())
//              );
//
//
//             }, child: Text("Button Home Page"),
//             style: ElevatedButton.styleFrom(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(5),
//                 side: BorderSide(width: 1, color: Colors.black)
//               )
//             ),
//             ),
//           )
//
//         ],
//       ),
//     );
//   }
// }
//
// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});
//
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title:  Text("Login Screen",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold
//       ),),
//       automaticallyImplyLeading: false,
//         centerTitle: true,
//         backgroundColor: Colors.black,
//         foregroundColor: Colors.white,
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//
//
//   Center(
//     child: ElevatedButton(onPressed: (){
//       // Navigator.of(context).pop();
//       // Replace current page
//       Navigator.of(context).push(
//           MaterialPageRoute(builder: (context) => DashBoard())
//       );
//
//
//     }, child: Text("Button Login"),
//     style: ElevatedButton.styleFrom(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(5),
//         side: BorderSide(width: 1, color: Colors.black)
//       )
//     ),
//     ),
//   )
//
//         ],
//       ),
//     );
//   }
// }
//
//
// class DashBoard extends StatefulWidget{
//   DashBoard({super.key});
//   @override
//   State<DashBoard> createState() => DashBoardStateObj();
// }
//
// class DashBoardStateObj extends State<DashBoard>{
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Dash Bord Screen"),
//         centerTitle: true,
//         automaticallyImplyLeading: false,
//         backgroundColor: Colors.black,
//         foregroundColor: Colors.white,
//         titleTextStyle: TextStyle(
//           fontSize: 22, fontWeight: FontWeight.bold,
//
//         ),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//
//           Center(
//             child: ElevatedButton(onPressed: (){
//
//               // Navigator.of(context).pop();
//
//               Navigator.of(context).pushAndRemoveUntil(
//                   MaterialPageRoute(builder: (context) => PaymentScreen()),
//                   (route) => false
//               );
//
//
//             }, child: Text("DashBoard Button"),
//             style: ElevatedButton.styleFrom(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(5),
//                 side: BorderSide(width: 1, color: Colors.black)
//               )
//             ),
//             ),
//           )
//
//
//         ],
//       ),
//     );
//   }
// }
//
//
// class PaymentScreen extends StatefulWidget{
//   State<PaymentScreen> createState() => PaymentScreenStateObj();
// }
//
// class PaymentScreenStateObj extends State<PaymentScreen>{
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       body: Column(
//         children: [
//
//          ElevatedButton(onPressed: (){
//
//           Navigator.of(context).pop();
//
//          }, child: Text("Button Payment"),
//          style: ElevatedButton.styleFrom(
//            shape: RoundedRectangleBorder(
//              borderRadius: BorderRadius.circular(5),
//              side: BorderSide(
//                width: 1, color: Colors.black
//              )
//            )
//          ),
//          )
//
//         ],
//       ),
//     );
//   }
// }




// // Remove all previous pages
// Navigator.pushAndRemoveUntil(
//   context,
//   MaterialPageRoute(builder: (_) => const HomePage()),
//   (route) => false,
// );