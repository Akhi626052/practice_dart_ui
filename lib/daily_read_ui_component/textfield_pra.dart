import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  // final ScrollController _controller = ScrollController();
  final UndoHistoryController undoController = UndoHistoryController();
  final ScrollController _scrollController = ScrollController();
  @override
  void dispose() {
    _scrollController.dispose();
     undoController.dispose();
     super.dispose();
  }
  // TextEditingController   // TextField text control
  // ScrollController        // Scrolling control
  // PageController          // PageView control
  // TabController           // TabBar control
  // AnimationController     // Animations
 final _formKey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
@override
Widget build(BuildContext context){
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, result){
        print("Did Pop: $didPop, Result: $result");
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,// overflow error ke li-ya
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
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // TextField(
                  //   maxLength: 20,
                  //   buildCounter: (
                  //       BuildContext context, {
                  //         required int currentLength,
                  //         required bool isFocused,
                  //         required int? maxLength,
                  //       }) {
                  //     if (!isFocused) return null;
                  //
                  //     return Text('$currentLength/$maxLength');
                  //   },
                  // )
                  SizedBox(height: 10,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      maxLength: 20,
                        decoration: InputDecoration(counterText: ""),
                        // isFocused = true
                      // buildCounter: (BuildContext context,{required int currentLength, required bool isFocused,required int? maxLength}){
                      //   return null; // Text("$currentLength / $maxLength");
                      // },

                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      textInputAction: TextInputAction.search,
                      onSubmitted: (value) {
                        print("Searching: $value");
                      },
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    // height: double.infinity,
                    // width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),// only, all
                    child: SizedBox(height: 100,
                      child: TextField(
                        dragStartBehavior: DragStartBehavior.down,//start
                        keyboardAppearance: Brightness.light,
                       onTapUpOutside:  ,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(10),
                        ],



                        canRequestFocus: true, // TextField pe tap karne se keyboard open nahi hoga
                        clipBehavior: Clip.hardEdge, //1. antiAlias,2. none 3.antiAliasWithSaveLayer,  TextField ke content ko clip karega, cut kar de ga direct
                        controller: _controller,
                        cursorErrorColor: Colors.red,
                        cursorColor: Colors.black,

                        focusNode: _focusNode,
                        mouseCursor: SystemMouseCursors.click,
                         groupId: "textfield_group",
                         cursorOpacityAnimates: true,// Opacity animate hogi (smooth blink)
                        cursorHeight: 20,
                        cursorWidth: 2,
                        cursorRadius: Radius.circular(30),
                        onSubmitted: (value){
                          print("Submitted value: $value");
                        },

                         // obscureText: false,
                        // contextMenuBuilder:
                        // contentInsertionConfiguration:
                        // readOnly: true,
                        // enabled: false,
                        // readOnly: true,
                        // showCursor: false,

                        expands: true, // TextField ap-ne parent ki available height ko poo-ra fill kare-ga..// expands ke sa-th minLines and maxLines li-kha-na pare ga.
                        maxLines: null,
                        minLines: null,
                        textAlignVertical: TextAlignVertical.top,
                        // ignorePointers: true,
                        //
                        // maxLines: 5,
                        // minLines: 5,
                        // maxLength: ,
                        undoController: undoController,
                        // scrollPadding: ,
                        // scrollPhysics: ,
                        // scrollPadding: ,
                        scrollController: _scrollController,
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                        enabled: true,
                        autofocus: false, // true
                        onChanged: (value){
                          print("Value changed: $value");
                        },
                        onTap: (){
                          print("object11111");
                        },
                        autocorrect: true,
                        onTapOutside: (_){
                          FocusScope.of(context).unfocus();
                          // FocusManager.instance.primaryFocus?.unfocus();
                        },
                        textDirection: TextDirection.ltr,//rtl
                        smartDashesType: SmartDashesType.enabled,
                        textAlign: TextAlign.start,
                        // keyboardType: TextInputType.text,
                        keyboardType: TextInputType.multiline,
                        textInputAction: TextInputAction.newline,// done, Done, Next, Search, Send, Go, // next, search, send, go, newline
                        autofillHints: [AutofillHints.email],
                        showCursor: true, // curser visible or not
                        key: ValueKey("textfield1"),
                        decoration: InputDecoration(
                          // errorText: "Invalid Error",

                          contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1, color: Colors.red,
                            )
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1, color: Colors.red
                            ),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              width: 1, color: Colors.black
                            )
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1, color: Colors.blue
                            ),
                            borderRadius: BorderRadius.circular(10)
                          ),

                        ),

                      ),
                    ),
                  ),
              
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        undoController.undo();
                      }, icon: Icon(Icons.undo)),
                      IconButton(onPressed: (){
                        undoController.redo();
                      }, icon: Icon(Icons.redo)),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Form(
                    key: _formKey,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        cursorErrorColor: Colors.pink,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Name is required";
                          }
                          return null;
                        },

                        decoration: InputDecoration(
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 2,),),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color: Colors.green),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              width: 2, color: Colors.black
                            ),
                          ),
                          // border: OutlineInputBorder( // di-fault color ke li-ya
                          //   borderSide: BorderSide(width: 1,color: Colors.brown),
                          //   borderRadius: BorderRadius.circular(10)
                          // ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 1, color: Colors.brown),
                          ),
                        ),
                      ),
                      ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    // width: 120,
                    // height: 120,
                    clipBehavior: Clip.antiAliasWithSaveLayer, // none/antiAlias/antiAliasWithSaveLayer/hardEdge
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset("assets/images/awesome.png",fit: BoxFit.cover,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 80),
                    child: ElevatedButton(
                      onPressed: (){
                      if(_formKey.currentState!.validate()){
                        print("Form is valid");
                      }else{
                        print("Form is invalid");
                      }
                    }, child: Text("Submit"),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(width: 1, color: Colors.black)
                      ),
                    ),
                    ),
                  ),
                ],
              ),
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