import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
void main(){
  runApp(MyAppQr());

}
class MyAppQr extends StatelessWidget {
  const MyAppQr({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MediaQueryBasic(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MediaQueryBasic extends StatefulWidget {
  const MediaQueryBasic({super.key});

  @override
  State<MediaQueryBasic> createState() => _TodoAppFlState();
}

class _TodoAppFlState extends State<MediaQueryBasic> {

  @override
  void initState(){
    super.initState();
  }





  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    Orientation orientation = MediaQuery.of(context).orientation;
    double statusBarHeight = MediaQuery.of(context).padding.left;
    print(statusBarHeight);
    double leftPadding = MediaQuery.of(context).padding.left;
    double topPadding = MediaQuery.of(context).padding.top;
    double bottomPadding = MediaQuery.of(context).padding.bottom;
    print("Bottom Padding: ${bottomPadding}");
    print("Top Padding: ${topPadding}");
    print("left padding: ${leftPadding}");
    // SafeArea ek widget hai jo content ko system UI (status bar, notch, navigation bar, gesture area) se overlap hone se bachata hai.
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child:
                Column(

                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  key: Key("cl"),
                  mainAxisSize: MainAxisSize.max,
                  textDirection: TextDirection.rtl,
                  spacing: 10,
                  textBaseline: TextBaseline.alphabetic,
      
                  children: [
                    SizedBox(
                      height: 40,
                    ),
      
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 40),
                        width: width * 0.8,
                        height: height * 0.2,
                        color: Colors.black,
                      ),
                    ),
      
      
      
      
                    if (MediaQuery.of(context).orientation == Orientation.portrait)
                      Text("Portrait")
                    else
                      Text("Landscape")
      
      
                    ,
      
                    Padding(
                      // padding: EdgeInsets.only(left: leftPadding),
                      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
                      // padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.10,
                        height: MediaQuery.of(context).size.height * 0.2,
                        color: Colors.yellow,
                      ),
                    ),
                    SizedBox(height: 40,),
                    LayoutBuilder(builder: (context, constraints){
                      print(" max Widget ${constraints.maxWidth} ");
                      print("max Height ${constraints.maxHeight} ");
                      return Container(
                          // width: MediaQuery.of(context).size.width * 0.05,
                          // height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width, // 360
                          height: MediaQuery.of(context).size.height, // 800
                          color: Colors.black,
                      );
                    }),
      
                  // SizedBox(height: 10,),
                    // Padding(padding: EdgeInsets.only(
                    //   top: statusBarHeight,
                    //
                    // ),
                    //   child: Text("Hello"),),
      
                    Padding(
                      padding: EdgeInsets.symmetric(
                       horizontal: MediaQuery.of(context).size.width * 0.03
                      ),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.9,

                        decoration: BoxDecoration(
                            color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.black)
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

