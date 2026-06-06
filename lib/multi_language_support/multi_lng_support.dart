import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';

void main(){
  runApp(MultiLanguageSupport());
}
class MultiLanguageSupport extends StatelessWidget{
  MultiLanguageSupport({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiLangSupportApp(title: "Multi Language Supported App",),
    );
  }
}
class MultiLangSupportApp extends StatefulWidget{
  final String title;
  MultiLangSupportApp({Key? key,required this.title}) : super(key: key);
  @override
  State<MultiLangSupportApp> createState() => MultiLangSupportAppState();
}
class MultiLangSupportAppState extends State<MultiLangSupportApp>{
  didChangeDependence(){
    super.didChangeDependencies();
    print("did change dependencies called");
    // this method is called when the dependencies of the state object change.
    // it is called immediately after initState and whenever the dependencies change thereafter.
    // it is used to perform any necessary setup or cleanup when the dependencies change.
    // for example, if the state object depends on an inherited widget, you can use this method to subscribe to changes in that widget.
    // you can also use this method to perform any necessary cleanup when the state object is removed from the widget tree.
    // it is important to note that this method is not called when the state object is first created, but only when the dependencies change after that.
    // therefore, you should not perform any initialization in this method that should only be done once when the state object is created. instead, you should use initState for that purpose.
  }
  @override
  Widget build(BuildContext context){
   return SafeArea(child: Scaffold(
     appBar: AppBar(title: Text(widget.title),backgroundColor: Colors.black,foregroundColor: Colors.white,centerTitle: true,titleTextStyle: TextStyle(color: Colors.tealAccent,fontSize: 22,fontWeight: FontWeight.bold),),
     body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [

         Text("",)
       ],
     ),
   ));
  }
}