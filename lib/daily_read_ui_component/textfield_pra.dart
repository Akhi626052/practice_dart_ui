import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      // home: TextFieldPra(),
      home: TextFieldPraSecond(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class TextFieldPraSecond extends StatefulWidget{
  @override
  State<TextFieldPraSecond> createState() => _TextFieldPraSecondState();
}
class _TextFieldPraSecondState extends State<TextFieldPraSecond>{
  final ScrollController _controller = ScrollController();
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  // TextEditingController   // TextField text control
  // ScrollController        // Scrolling control
  // PageController          // PageView control
  // TabController           // TabBar control
  // AnimationController     // Animations




@override
Widget build(BuildContext context){
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, result){
        print("Did Pop: $didPop, Result: $result");
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Practice Only Ui"),
          titleTextStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          titleSpacing: 20,
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,))
          ],

        ),
        body:


            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),// only, all
                  child: TextField(
                    autofocus: true,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.text,
                    onChanged: (value){
                      print("Value changed: $value");
                    },
                    onTap: (){
                      print("object11111");
                    },
                    autocorrect: true,
                    // enabled: false,
                    // readOnly: true,
                    // showCursor: false,
                    onTapOutside: (_){
                      FocusScope.of(context).unfocus();
                      // FocusManager.instance.primaryFocus?.unfocus();
                    },
                    textDirection: TextDirection.ltr,//rtl
                    smartDashesType: SmartDashesType.enabled,
                    textAlign: TextAlign.start,
                    textInputAction: TextInputAction.done,// Done, Next, Search, Send, Go, // next, search, send, go, newline
                    autofillHints: [AutofillHints.email],
                    showCursor: false,
                    scrollController: _controller,
                    key: ValueKey("textfield1"),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1, color: Colors.red,
                        )
                      )

                    ),
                  ),
                ),
              ],
            ),


      ),
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
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("TextField Practice"),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.search)),
        IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
        IconButton(onPressed: (){}, icon: Icon(Icons.add)),


      ],
      ),

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
         ),
         ),


          SizedBox(height: 10,),
          TextField(
            obscureText: true,
            obscuringCharacter: '*',
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: "Enter your phone number",
              labelText: "Phone",
              // prefixIcon: Icon(Icons.phone),
              prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.phone)),
              // suffixIcon: Icon(Icons.remove),
              suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove)),
              prefixText:   "Phone: ",
              suffixText: "Phone number is required",
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(width: 1, color: Colors.red),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(width: 1, color: Colors.black),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(width: 1,color: Colors.black),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  width: 1, color: Colors.black
                )
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(width: 1, color: Colors.black)
              ),
            ),
          ),

          ElevatedButton(
            onPressed: (){

            }, child: Row(
            mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.login),
                SizedBox(width: 5,),
                Text("Login"),
              ],
            ),

            style: ElevatedButton.styleFrom(

            backgroundColor: Colors.black,
            foregroundColor: Colors.black,
             alignment: Alignment.center,
             iconColor: Colors.black,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(width: 1, color: Colors.black),
            ),
          ),
          ),

         GestureDetector(
           onTap: (){

           },
           onLongPress: (){

           },
           onDoubleTap: (){

           },
           child: Container(
             height: 100,width: 100, decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(10), border: Border.all(width: 1, color: Colors.black),
           ),
           ),
         ),



        ],
      ),
    );
  }
}