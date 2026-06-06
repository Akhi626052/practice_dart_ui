import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';

void main(){
  runApp(HomePageMn());
}
class HomePageMn extends StatelessWidget{
  HomePageMn({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: BottomPg(),
      debugShowCheckedModeBanner: false,

    );
  }
}
class BottomPg extends StatefulWidget{
  State<BottomPg> createState() => BottomPgState();
}
class BottomPgState extends State<BottomPg>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              style: btnStyle,
              onPressed: (){
                // showModalBottomSheet(context: context, builder: (context){
                //   return Container(
                //     height: 200,
                //       color: Colors.black,
                //   );
                // });
                mnBottomSheet(context);
              }, child: Text("Bottom Sheet Button"))
        ],
      ),
    ));
  }
}
void mnBottomSheet(BuildContext context){
  showModalBottomSheet(context: context, builder: (context){
    return BottmResultUi();
  });
}
class BottmResultUi extends StatelessWidget{
  @override
  build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          Text("data"),
          Text("data"),
          Text("data"),
          Text("data"),
          Text("data"),
        ],
      ),
    );
  }
}
// 👉 ButtonStyle type ka variable
// ya
// 👉 Object creation and assignment
// Ye ek variable declaration hai jiska type ButtonStyle hai.
ButtonStyle btnStyle = ElevatedButton.styleFrom(
  backgroundColor: Colors.black,
  foregroundColor: Colors.white,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10)
  ),
 side: BorderSide(color: Colors.white, width: 2)
);