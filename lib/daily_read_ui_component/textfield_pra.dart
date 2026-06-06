import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: TextFieldPra(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TextFieldPra extends StatefulWidget{
  @override
  State<TextFieldPra> createState() {
    return _StatefullTextField();
  }
}
class _StatefullTextField extends State<TextFieldPra>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  void dispose(){
    super.dispose();
  }
  void didChangeDependencies(){
    super.didChangeDependencies();
  }
  void didUpdateWidget(covariant TextFieldPra oldWidget){
    super.didUpdateWidget(oldWidget);
  }
  var textController = TextEditingController(),
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("TextField Practice"),),
      body: Column(
        children: [

         TextField(
           obscureText: true,
           obscuringCharacter: "*",
           controller: textController,
           keyboardType: TextInputType.text,
           decoration: InputDecoration(
             hintText: "Enter your name",
             hintStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.bold, fontFamily: FontStyle.italic.toString()),
             labelText: "Name",
             labelStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.bold, fontFamily: FontStyle.italic.toString()),
             prefixIcon: Icon(Icons.near_me),
             suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove)),
             prefixText: "Name: ",
             suffixText: "Name is required",
             border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10),
               borderSide: BorderSide(
                 width: 1, color: Colors.black
               ),
             ),

           //    focusedBorder: OutlineInputBorder(
           //     borderRadius: BorderRadius.circular(10),
           //     borderSide: BorderSide(
           //       width: 1, color: Colors.red
           //     ),
           // ),
         ),
         )


        ],
      ),
    );
  }
}