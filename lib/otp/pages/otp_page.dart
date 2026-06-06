import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../widgets/elevated_bt.dart';

void main(){
  runApp(
      MaterialApp(
    home: OtpPage(),
    debugShowCheckedModeBanner: false,
  ));
}
class OtpPage extends StatefulWidget{
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  TextEditingController textCon1 = TextEditingController();
  TextEditingController textCon2 = TextEditingController();
  TextEditingController textCon3 = TextEditingController();
  TextEditingController textCon4 = TextEditingController();
  final focus1 = FocusNode();
  final focus2 = FocusNode();
  final focus3 = FocusNode();
  final focus4 = FocusNode();

  @override
  void dispose() {
    textCon1.dispose();
    textCon2.dispose();
    textCon3.dispose();
    textCon4.dispose();

    focus1.dispose();
    focus2.dispose();
    focus3.dispose();
    focus4.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context){


    print("OTP page build method called");
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, result){
        print("Back button pressed. didPop: $didPop, result: $result");
        // Return true to allow the pop, false to prevent it
        FocusManager.instance.primaryFocus?.unfocus();
        // return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Verification Screen"),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          titleSpacing: 0,
          centerTitle: true,
          elevation: 2,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.add)),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            // IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
              // context: current widget ki information
              PopupMenuButton<String>(
                  onSelected: (value){

                      if(value == "profile"){
                         print("Open Profile screen wait");
                      }
                      else if(value=="setting"){
                         print("Open Setting screen wait");
                      }
                      else if(value == "about"){
                         print("Open About screen wait");
                      }

                  },
            itemBuilder: (context)=>[
              PopupMenuItem(child: Text("Profile"), value: "profile",),
              PopupMenuItem(child: Text("Setting"), value: "setting",),
              PopupMenuItem(child: Text("About"), value: "about",),
            ]),
          ],
        ),

        body: GestureDetector(
          onTap: (){
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 150,),
                Center(child: Text("Verification Code",textAlign: TextAlign.center,key: Key("vr"),style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),)),
                Center(child: SizedBox(
                  width: 300,
                  child: Text("Enter the 4 digit verification code received",
                    textAlign: TextAlign.center,
                    softWrap: true,// the text will mover to the next line
                    maxLines: 2,
                    selectionColor: Colors.blue,
                    // cursorColor: Colors.red,
                    // selectionHeightStyle: BoxHeightStyle.tight,
                    textDirection: TextDirection.ltr,
                    // overflow: ,
                    overflow: TextOverflow.ellipsis,
                    locale: Locale("en"),

                    textHeightBehavior: TextHeightBehavior(
                      applyHeightToFirstAscent: true,
                      applyHeightToLastDescent: true,
                    ),
                    // strutStyle: StrutStyle(
                    //   fontSize: 15,
                    //   fontWeight: FontWeight.bold,
                    //   fontStyle: FontStyle.italic,
                    //   forceStrutHeight: true,
                    // ),
                    semanticsLabel: "Enter the 4 digit verification code received",
                    // textScaler: TextScaler.linear(1.0),
                    textWidthBasis: TextWidthBasis.longestLine,
                    // semanticsIdentifier: "Enter the 4 digit verification code received",
                    // textScaleFactor: 1.0,
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                ),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    myInputBox(context, textCon1, focus1, focus2,null,true),
                    myInputBox(context, textCon2, focus2, focus3,focus1,false),
                    myInputBox(context, textCon3, focus3, focus4,focus2,false),
                    myInputBox(context, textCon4, focus4, null,focus3,false),
                  ],
                ),
                SizedBox(height: 50,),

                // Container(
                //   margin: EdgeInsets.symmetric(horizontal: 10),
                //   child: ElevatedButton(
                //       style: ElevatedButton.styleFrom(
                //         backgroundColor: Colors.black,
                //         foregroundColor: Colors.white,
                //         padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                //         shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(10),
                //           side: BorderSide(width: 1, color: Colors.black),
                //
                //         )
                //       ),
                //       onPressed: (){}, child: Text("Verify",style: TextStyle(color: Colors.white,fontSize: 22, fontWeight: FontWeight.bold),)),
                // ),

                myButton(
                    onTap: (){
                    print("Verify button pressed");
                  }, text: 'Verify',
                     textColor: Colors.yellowAccent,
                     icon: Icons.login,iconColor: Colors.red,
                  // iconColor: Colors.white,
                ),


                // Container(
                //   height: 60,
                //   width: 60,
                //   decoration: BoxDecoration(
                //     color: Colors.black,
                //     borderRadius: BorderRadius.circular(10),
                //     border: Border.all(width: 1, color: Colors.blue),
                //   ),
                // ),


              ]
            ),
          ),
        ),
      ),
    );
  }

  Widget myInputBox(BuildContext context, TextEditingController controller,FocusNode currentFocus, FocusNode? nextFocus, FocusNode? previousFocus,bool autoFocus){
    return Container(width: 60, height: 70,
        // decoration: BoxDecoration(
        //   color: Colors.white,
        //   borderRadius: BorderRadius.circular(5),
        //   border: Border.all(width: 1, color: Colors.black),
        // ),
        child: KeyboardListener(
          focusNode: FocusNode(),

          onKeyEvent: (event){
            // KeyDownEvent → Key dabayi gayi
            // KeyUpEvent → Key chhodi gayi
            if(event is KeyDownEvent && event.logicalKey == LogicalKeyboardKey.backspace){
              if(controller.text.isEmpty && previousFocus != null){
                FocusScope.of(context).requestFocus(previousFocus);
              }
            }
          },
          child: TextField(
            // onTapOutside: (event) {
            //   currentFocus.unfocus();
            // },
            // onEditingComplete: () {
            //   FocusManager.instance.primaryFocus?.unfocus();
            // },
            // autofocus: true,
            autofocus: autoFocus,
            focusNode: currentFocus,
            controller: controller,
            key: Key("otp"),
            minLines: 1,
            maxLines: 1,
            maxLength: 1,
            // keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            // keyboardAppearance: ,
            keyboardType: TextInputType.phone,
            // onChanged: (value){
            //   if(value.length == 1 && nextFocus != null){
            //     FocusScope.of(context).requestFocus(nextFocus);
            //   }else{
            //     // Last OTP box
            //     FocusScope.of(context).unfocus();
            //   }
            // },
            onChanged: (value) {
              if (value.length == 1) {
                if (nextFocus != null) {
                  FocusScope.of(context).requestFocus(nextFocus);
                }
                else {
                  // Last OTP box
                  // FocusScope.of(context).unfocus();
                  currentFocus.unfocus();
                  FocusManager.instance.primaryFocus?.unfocus();
                }
              }
            },

            style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
            decoration: InputDecoration(
              // labelText: "dsdsfdsv",

              counterText: '',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(width: 1, color: Colors.black),
              ),
            ),

          ),
        ),




    );
        }
}

