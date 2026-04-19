import 'package:flutter/material.dart ';
import 'package:flutter/services.dart';
void main(){
  runApp(MyAppDmo());
}
class MyAppDmo extends StatelessWidget {
  const MyAppDmo({super.key});

  @override
  Widget build(BuildContext context){ // build function ka return type = Widget, context = variable ka name hai.
    return MaterialApp( // build function flutter ese bar bar call kar ta hai jab bhi widget tree me koi change ho ta hai ya ui me koi change hota hai
      home: HomeScn(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.yellow
        ),
        textTheme: TextTheme(
          headlineLarge: TextStyle(color: Colors.yellow,fontSize: 21),
          headlineMedium: TextStyle(color: Colors.yellowAccent, fontSize: 22)
        ),
      ),
    );
  }
}



class HomeScn extends StatefulWidget {
  const HomeScn({super.key});
  @override
  State<HomeScn> createState() => HomeScnState();

}
class HomeScnState extends State<HomeScn>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("comming soon"),
          // ElevatedButton(
          //   onPressed: (){},
          //   child: Text("Elevated Button",),
          //   style: ElevatedButton.styleFrom(
          //       backgroundColor: Colors.red,
          //       foregroundColor: Colors.yellow,
          //       shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(10),
          //        
          //       ),
          //       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          //       textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
          //   ),
          // ),

          Center(
            child: Container(
              width: 100,height: 100,
              decoration: BoxDecoration(
                  border: Border.all(width: 5,color: Colors.blue),
                  borderRadius: BorderRadius.circular(50)
              ),
              child: CircleAvatar(
                radius: 50,backgroundColor: Colors.red, backgroundImage: AssetImage("assets/images/profile.png"),
                // child: Icon(Icons.account_circle,size: 40,color: Colors.white,),

              ),
            ),



          ),
          SizedBox(height: 20,),


       Container(
         margin: EdgeInsets.symmetric(horizontal: 20),
         child: TextField(
           showCursor: true,
           cursorColor: Colors.red,
           cursorHeight: 20,cursorWidth: 2, autofocus: true,
           keyboardType: TextInputType.emailAddress,
           decoration: InputDecoration(
             labelText: "email",
             hintText: "please enter your email",
             prefixIcon: Icon(Icons.email),
             suffixText: "email is valid",
             focusedBorder: OutlineInputBorder(
               borderRadius:BorderRadius.circular(10),
               borderSide: BorderSide(color: Colors.blue, width: 2),

             ),
             enabledBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10),
               borderSide: BorderSide(color: Colors.black, width: 2)
             ),


             disabledBorder: OutlineInputBorder(
               borderSide: BorderSide(color: Colors.black, width: 2),
               borderRadius: BorderRadius.circular(10),
             ),
             errorBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10),
               borderSide: BorderSide(color: Colors.blue, width: 2),
             ),
             focusedErrorBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10),
               borderSide: BorderSide(color: Colors.red, width: 2),
             ),


           ),
         ),
       ),


      Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: TextField(
          keyboardType: TextInputType.visiblePassword,
          obscureText: true,
          obscuringCharacter: "*",
          autofocus: true,
          enabled: true,
          decoration: InputDecoration(
            hintText: "please enter your password",
            suffixText: "password is valid",
            prefixIcon: Icon(Icons.password),
            labelText: "password",
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blue,
                width: 2
              ),
              borderRadius: BorderRadius.circular(10)
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black),

            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(10)
            )

          ),

        ),
      ),

       Container(
         margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
         child: TextField(
           keyboardType: TextInputType.text,
           maxLines: 5,
           decoration: InputDecoration(
             hintText: "Please enter your address",
             labelText: "Address",
             alignLabelWithHint: true,
             focusedBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10),
               borderSide: BorderSide(color: Colors.black,width: 2),

             ),
             enabledBorder: OutlineInputBorder(
               borderSide: BorderSide(color: Colors.black),
               borderRadius: BorderRadius.circular(10),
             ),
             border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10),
               borderSide: BorderSide(color: Colors.black, width: 2),
             )
           ),
         ),
       ),

       Expanded(
         child: Center(
           child: ElevatedButton(onPressed: (){
                  }, child: Text("Button",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 22),),
                  style: ElevatedButton.styleFrom(
                    alignment: Alignment.center,
                    textStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                    padding: EdgeInsets.symmetric(horizontal: 190,vertical: 20),
                    backgroundColor: Colors.blue,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.black, width: 2),

                    ),
                     foregroundColor: Colors.yellow,
                  ),
                  ),
         ),
       ),




          // practice button design
          // ElevatedButton(onPressed: (){
          //
          // }, child: Text("Button"),
          // style: ElevatedButton.styleFrom(
          //   backgroundColor: Colors.teal,
          //   foregroundColor: Colors.teal,
          //   textStyle: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          //   padding: EdgeInsets.symmetric(horizontal: 20,vertical: 22),
          //   shape: RoundedRectangleBorder(
          //     side: BorderSide(color: Colors.black,width: 2),
          //     borderRadius: BorderRadius.circular(20),
          //   )
          // ),
          // ),
          //
          // ElevatedButton(
          //   onPressed: (){
          //
          //   },
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Icon(Icons.login,size: 22,color: Colors.white,shadows: [
          //         Shadow(
          //           color: Colors.white,
          //           blurRadius: 4,
          //           offset: Offset(0.5, 0.5)
          //         )
          //       ],),
          //       SizedBox(width: 15,),
          //       Text(("Button")),
          //     ],
          //   ),
          //   autofocus: true,
          //   focusNode: FocusNode(),
          //   onHover: (isHovering){
          //
          //   },
          //   key: Key("myButton"),
          //   clipBehavior: Clip.hardEdge,
          //   statesController: WidgetStatesController(),
          //   onFocusChange: (hasFocus){},
          //   style: ElevatedButton.styleFrom(
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(10)
          //     ),
          //
          //     side: BorderSide(
          //       color: Colors.black, width: 2
          //     ),
          //     padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          //     backgroundColor: Colors.teal,
          //     foregroundColor: Colors.white,
          //     textStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),
          //     alignment: Alignment.centerLeft,
          //     fixedSize: Size(50,50),
          //     // maximumSize: Size(100, 40),
          //     // minimumSize: Size(100, 40),
          //     // overlayColor: Colors.green
          //     iconSize: 22,
          //     elevation: 5,
          //     animationDuration: Duration(microseconds: 1000),
          //     enableFeedback: true
          //
          //
          //   ),
          //
          //
          // ),
        ],
      ),
    );
  }
}