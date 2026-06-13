import 'package:flutter/material.dart';

void main(){
  runApp(
    MyAppTx()
  );
}
class MyAppTx extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppTxx(),
    );
  }
}

class MyAppTxx extends StatefulWidget{
  State<MyAppTxx> createState() => StateMyAppTxx();
}
class StateMyAppTxx extends State<MyAppTxx>{
  // @override
  // void setState(VoidCallback fn) {
  //   // TODO: implement setState
  //   super.setState(fn);
  // }

  void increment(){
     setState(() {
       
     });
  }
  @override
  void initState(){
    super.initState();
    print("initState----");
  }
  @override
  void dispose(){
    super.dispose();
    focusNode.dispose(); //   // Dart me class-level variables ka order matter nahi karta.
    textEditingController.dispose();
    undoHistoryController.dispose();
    scrollController.dispose();
  }

  FocusNode focusNode = FocusNode();
  TextEditingController textEditingController = TextEditingController();
  UndoHistoryController undoHistoryController = UndoHistoryController();
  ScrollController scrollController = ScrollController();
  // AnimationController animationController = AnimationController(vsync: null);
  String wl = "Hello";
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies--------------");
    // Kab call hota hai?
    // initState() ke baad ek baar.
    // Jab koi dependency change hoti hai.
    // Theme.of(context)
    // MediaQuery.of(context)
    // Provider.of(context)
    // Agar ye inherited data change hota hai, to didChangeDependencies() call ho sakta hai.

   // Interview Answer
   // Jab widget ki dependencies (Theme, MediaQuery, Provider, etc.) change hoti hain tab didChangeDependencies() call hota hai.

  }

  // @override
  // void didUpdateWidget(covariant MyAppTxx oldWidget) {
  //   super.didUpdateWidget(oldWidget);
  //   print("didUpdateWidget----------------");
  // }
  @override
  void didUpdateWidget(covariant MyAppTxx oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget----------------");
    // Kab call hota hai?
    // Jab parent widget same widget ko naye data ke saath rebuild karta hai.
    //  Example:

  //  Parent:
    //
    // MyAppTxx(title: "Hello")
    //
    // Baad me:
    //
    // MyAppTxx(title: "Welcome")
    //
    // To child widget me:
    //
    // didUpdateWidget()
    //
    // call hoga.


  //  Simple Meaning
  //  "Mujhe parent se naya data mila hai."
  //  Interview Answer
   // didUpdateWidget() tab call hota hai jab parent widget same State object ko rakhte hue widget ki properties update karta hai.

  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactivate----------------");
  }
  @override
  Widget build(BuildContext context) {
    // ✅ Build method ke andar Local Variables ho sak-te hai and Widget ho-ge.
    // FocusNode focusNode = FocusNode(); // Agar aap build() ke andar FocusNode() banaoge, to har rebuild par naya object create hoga, jo galat practice hai.

    String name = "Welcome' Akhilesh";
    bool isLogin = true;
    // String wl = "Hello";
    print("rebuild method");
     return Scaffold(
       appBar: AppBar(// widget hai
         title: Text(name),
         titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.orange),
         backgroundColor: Colors.yellowAccent,
         centerTitle: true,
       ),
       body: Column(
         children: [
           SizedBox(height: 20,),
           Container(
             width: double.infinity,
             margin: EdgeInsets.symmetric(horizontal: 10),
             child: ElevatedButton(
             onPressed: (){
               setState(() {
                 wl = "welcome";
               });
               print(wl);
             }, child: Text("Change Name"),
             style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(5),
                 side: BorderSide(color: Colors.black,width: 1)
               ),

             ),
             ),
           ),
           SizedBox(height: 20,),

           Text(wl),

         ],
       ),
     );
  }
  
  void decrement(){
    setState(() {
      
    });
  }
}