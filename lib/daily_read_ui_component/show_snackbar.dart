import 'package:flutter/material.dart';
void main(){
  runApp(SnackBrApp());
}

class SnackBrApp extends StatelessWidget {

  const SnackBrApp({super.key});
  // key constructor me aayi
  // super.key ne usko parent Widget class ko bhej diya
  // key constructor me aayi
  // super = parent class (StatelessWidget)
  // super(key: key) = parent ko key pass kar di
// *****
//   Final One-Line Meaning
//       : super(key: key)
//
//   =
//
// "Constructor me jo key mili usko parent class ko pass kar do."
// jo bhi constructor ko key mili hai use parent class ko pass kar do
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: SnackBarApp(title: "SnackBar App"),
    );
  }
}


class SnackBarApp extends StatefulWidget{

  final String title;
  const SnackBarApp({super.key, required this.title}); // parent widget ko bhej deta hai.

  @override
  State<SnackBarApp> createState() => SnackBarStateApp();
}

class SnackBarStateApp extends State<SnackBarApp>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      key: ValueKey("D"),
      appBar: AppBar(title: Text(widget.title),),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, // likha hai, lekin Column full width nahi leti.
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  snackBarAnimationStyle: AnimationStyle(
                    duration: Duration(seconds: 2)
                  ),

                  SnackBar(content: Text("This is a snack-bar!"),backgroundColor: Colors.black,
                    action: SnackBarAction(label: "Undo", onPressed: (){
                      
                  }),
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                  ),

                  )
                );
              },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(
                        width: 1,color: Colors.black
                      )
                    ),
                    side: BorderSide(width: 1,color: Colors.orange),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    textStyle: TextStyle(fontSize: 17),
                  ),
                  child: Text("Show SnackBar")),
            ),
            Text("A",key: ValueKey("A"),),
            Text("B",key: ValueKey("B"),),
            Container(key: ValueKey("C"),),
            Column(
              key: ValueKey("C"),
            )
          ],
        ),
      ),
    );
  }
}
