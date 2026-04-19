import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: ScrollableScreen(),
      theme: ThemeData(
        primarySwatch: Colors.teal,
        primaryColor: Colors.black,
        textTheme: TextTheme(
          headlineLarge: TextStyle(color: Colors.yellow,fontSize: 21),
          headlineMedium: TextStyle(color: Colors.yellowAccent, fontSize: 22)
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
class ScrollableScreen extends StatefulWidget{
  @override
  State<ScrollableScreen> createState() => _ScrollableScreenState();
}
class _ScrollableScreenState extends State<ScrollableScreen>{
  ScrollController _scrollController = ScrollController();
  TextEditingController textController = TextEditingController();
  @override
  void initState(){
    super.initState();

    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   if (_scrollController.hasClients) {
    //     _scrollController.animateTo(
    //       _scrollController.position.maxScrollExtent,
    //       duration: Duration(milliseconds: 500),
    //       curve: Curves.easeOut,
    //     );
    //   }
    // });



    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   _scrollController.jumpTo(100);
    // });

    // _scrollController.animateTo(200, duration: Duration(seconds: 50), curve: Curves.easeInOut);
    //

    // _scrollController.animateTo(
    //   _scrollController.position.maxScrollExtent,
    //   duration: Duration(milliseconds: 500),
    //   curve: Curves.easeOut,
    // );

    // _scrollController.animateTo(
    //     _scrollController.position.maxScrollExtent, duration: Duration(seconds: 2),curve: Curves.easeInOut);



    //      print(_scrollController.offset);



        // offset, duration: duration, curve: curve)


    // _scrollController.addListener(() {
    //   print("Scroll Position: ${_scrollController.position.pixels}");
    // });


  }
  @override
  void dispose(){
    super.dispose();
    _scrollController.dispose();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [

          Expanded(
            child: ListView.separated(
              // reverse: true,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              // physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,

              itemBuilder: (context, index){

              return Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                color: Colors.black,
                width: 100,height: 100,

              );
            },
              separatorBuilder: (context, index){

              return Divider(thickness: 2,);
            },
              itemCount: 10,
              shrinkWrap: true,
              controller: _scrollController,
            ),
          ),


        ElevatedButton(onPressed: (){
          if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
            print("Already at the bottom");
          }
          print(" current position: ${_scrollController.position.pixels}"); // current position
          print(" max limit ${_scrollController.position.maxScrollExtent}"); // max limit
          print(" min limit ${_scrollController.position.minScrollExtent}"); // max limit
          _scrollController.animateTo(
            _scrollController.position.maxScrollExtent,
            duration: Duration(minutes: 1),
            curve: Curves.linear,
            // 👉 easeOut = start fast, end slow
          );
        }, child: Text("Scroll Button"))



        ],
      ),
    );
  }
}