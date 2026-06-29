import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      routes: {
        '/dashboard' : (context) => DashBoardScreen(),
        '/payment' : (context) => PaymentScr(),
      },
      // routes: {
      //   '/login': (context) => LoginScreen()
      // },
      debugShowCheckedModeBanner: false,
      home: WillPopScopeDemo(),
    );
  }
}



// first screen
class WillPopScopeDemo extends StatefulWidget {
  const WillPopScopeDemo({super.key});
  @override
  State<WillPopScopeDemo> createState() => _WillPopScopeDemoState();
}
class _WillPopScopeDemoState extends State<WillPopScopeDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            child: ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/dashboard');

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

    );
  }
}

// second screen
class DashBoardScreen extends StatefulWidget{
  DashBoardScreen({super.key});
  State<DashBoardScreen> createState() => DashBoardScreenState();
}
class DashBoardScreenState extends State<DashBoardScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:  Column(
        children: [
          Text("Data -------------"),

          ElevatedButton(onPressed: (){
            Navigator.popAndPushNamed(context, '/payment',
                arguments: {
                  'userId' : 123,
                  'name' : 'John'
                });
          }, child: Text("DashBoard Button"))


        ],
      ),
    );
  }}

// third screen
class PaymentScr extends StatelessWidget {
  const PaymentScr({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Payment Screen",style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)),
        ],
      ),
    );
  }
}
