import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageContainer(),
    );
  }
}

class PageContainer extends StatefulWidget {
  const PageContainer({super.key});

  @override
  State<PageContainer> createState() => _PageContainerState();
}

class _PageContainerState extends State<PageContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 100,),
          Center(
            child: Container(
              transform: Matrix4.rotationZ(0.5),
              transformAlignment: Alignment.centerRight,
              height: 200,
              width: 200,
              key: Key("cont"),
              // transform: Matrix4.translationValues(20, 20, 0),
              // transform: Matrix4.rotationZ(0.5), // rotate karna
              // transform: Matrix4.diagonal3Values(
              //   2.0, // x scale
              //   2.0, // y scale
              //   1.0,
              // ),

              // transform: Matrix4.skewX(0.3),
              // transform: Matrix4.rotationZ(
              //   0.2,
              // ),
            //     👉 Sirf drawing position change hoti hai.
            //     👉 Layout ki original jagah wahi rehti hai.

              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(horizontal: 10),
              // width: 100,
              // height: 100,
              decoration: BoxDecoration(
                // boxShadow: ,


                //   boxShadow: [
                //     BoxShadow(
                //       color: Colors.black26,
                //       // Shadow kitni blur (soft) hogi.
                //       blurRadius: 10,  // kitani soft hogi
                //       // Shadow kitni phaili hui hogi.
                //       spreadRadius: 2,
                //       // Shadow kis direction me jayegi.
                //       offset: Offset(4, 4),
                //     ),
                //   ],



                // Multiple Shadows
                  // Ek se zyada shadow bhi de sakte hain:

                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      offset: Offset(4, 4),
                    ),

                    BoxShadow(
                      blurRadius: 5,
                      offset: Offset(-2, -2),
                    ),
                  ],
                image: DecorationImage(image: AssetImage("assets/images/awesome.png"),
                fit: BoxFit.cover
                ),
                color: Colors.black,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 1, color: Colors.blue)
              ),
              child: Center(
                child: Text("Hello",style: TextStyle(color: Colors.white, fontSize: 20),

                ),
              ),
              clipBehavior: Clip.hardEdge,

              constraints: BoxConstraints.loose( // loose, tight, tightFor
                // width: 200, height: 200
                Size(200,200),
                // minWidth: 45,
                // maxWidth: 100,
                // minHeight: 100,
                // maxHeight: 200,
              ),
               padding: EdgeInsets.symmetric(horizontal: 10),
               foregroundDecoration: BoxDecoration(
                 gradient: LinearGradient(
                   begin: Alignment.topCenter,
                   end: Alignment.bottomCenter,
                   colors: [
                     Colors.transparent,
                     Colors.black54,
                    //foregroundDecoration Container ke child ke upar decoration draw karta hai, jabki decoration child ke peeche draw hota hai. Iska use overlays, gradients aur image darkening effects ke liye kiya jata hai.

                   ]
                 ),
                 // color: Colors.black54,
               ),
               // isAntiAlias: true,
            ),
          ),

          SizedBox(height: 50),



          Card(
            key: Key("vl"),
            clipBehavior: Clip.antiAlias,
            elevation: 10,
            margin: EdgeInsets.symmetric(horizontal: 10),
            // Ye decide karta hai ki Card ka border child ke upar draw hoga ya child ke neeche.
            borderOnForeground: true,
            color: Colors.red,
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(8),
            //   side: BorderSide(width: 1, color: Colors.blue)
            // ),
            shadowColor: Colors.red,
            // surfaceTintColor: Colors.blue,
            surfaceTintColor: Colors.transparent,
            semanticContainer: true,

            // semanticContainer: ,
            shape: RoundedRectangleBorder(

              borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5), bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5),

              ),
              side: BorderSide(width: 2, color: Colors.teal)
            ),

            child: Padding(
              key: Key("pd"),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              // child: Container(
              //   color: Colors.blue,
              //   height: 200,
              //   width: 300,
              // ),
              child: Image.asset("assets/images/awesome.png"),
            ),
          ),








        ],
      ),
    );
  }
}



