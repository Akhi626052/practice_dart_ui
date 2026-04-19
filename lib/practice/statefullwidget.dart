import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart%20';

void main(){
  runApp(MaterialApp(home: MyApp(),
  debugShowCheckedModeBanner: false,
  ));
}
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return MyPage();
  }
}
class MyPage extends State<MyApp>{
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final dt = DateTime.now();
    Object name = "Akhilesh";
    name = 12;

    print(dt);
    final wt = MediaQuery.of(context).size.width;
    final ht = MediaQuery.of(context).size.height;
    print("Screen width: $wt");
  }
  int selectedTab = 0;

  @override
  Widget build(BuildContext context){
    final wt = MediaQuery.of(context).size.width*0.5;
    var orientation = MediaQuery.of(context).orientation;
    final ht = MediaQuery.of(context).size.height*0.5;
    TapGestureRecognizer recognizer = TapGestureRecognizer();
    recognizer.onTap = (){
      print("Click Able");
    };
    @override
    void dispose() {
      recognizer.dispose();
      super.dispose();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App",style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        
        children: [
            // Container(height: ht,width: wt,color: orientation ==  Orientation.portrait ? Colors.orange : Colors.blue,),
          Expanded(
            flex: 2,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.ltr,
                    softWrap: true,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    // textScaleFactor: 1.5,
                    // strutStyle: StrutStyle(
                    //   height: 2
                    // ),
                    textHeightBehavior: TextHeightBehavior(
                      applyHeightToFirstAscent: false,
                      applyHeightToLastDescent: true
                    ),
                    locale: Locale(
                      'en', 'US'
                    ),

                    text: TextSpan(
                      semanticsLabel: "RRRRR",
                      text: ' Hello',
                      recognizer: recognizer,
                      style: TextStyle(
                        color: Colors.white,fontSize: 22, fontWeight: FontWeight.bold,wordSpacing: 2, height: 1.5,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' World',
                          style: TextStyle(
                            color: Colors.red, fontSize: 22,letterSpacing: 2,wordSpacing: 4,
                          ),
                        ),
                        TextSpan(
                          text: ' India',
                          style: TextStyle(color: Colors.orange,)
                        ),
                        TextSpan(
                          text: ' Rewa'
                        ),
                        TextSpan(
                          text: ' TaTa'
                        ),
                        TextSpan(text: " Gram Post Hinauta 588 Jila rewa madhya pradesh")


                      ]
                    ),
                  ),
                  RichText(
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      softWrap: true,
                      text: TextSpan(
                    text: 'Hello world',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 22,
                    ),
                    children: [
                      TextSpan(
                        text: ' Good',
                        style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold,wordSpacing: 2
                        )
                      ),
                    ]
                  ))
                ],
              ),


            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.orange,
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        "❤️",
                        semanticsLabel: "Heart",
                      ),
                      Text(
                        "🔥",
                        semanticsLabel: "Fire",
                      ),
                      Text(
                        "Dr.",
                        semanticsLabel: "Doctor",
                      ),
                      Text(
                        "₹",
                        semanticsLabel: "Indian Rupees",
                      ),
                      RichText(
                        text: TextSpan(
                          text: "Click Here",
                          semanticsLabel: "Click this link to open page",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),




                    ],
                  ),
                ),




            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.green,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.yellow,
            ),
          ),

          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.green,
            ),
          ),







        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: selectedTab,
        onTap: (index){
       setState((){
         selectedTab = index;
       });
        },
       selectedItemColor: Colors.red,
        unselectedItemColor: Colors.orange,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Setting"),
          BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle),label: "Profile")

        ],
      ),
    );

  }
}


