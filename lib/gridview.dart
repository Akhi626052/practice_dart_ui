import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';

void main(){
  runApp(FlutterAppDemo());
}
class FlutterAppDemo extends StatelessWidget {
  const FlutterAppDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GridViewDashboardScreen(),
      theme: ThemeData(
        primaryColor: Colors.black,
        primarySwatch: Colors.red,
        appBarTheme: AppBarTheme(
          color: Colors.blue
        ),
        textTheme: TextTheme(

        )
      ),
    );
  }
}
class GridViewDashboardScreen extends StatefulWidget {
  const GridViewDashboardScreen({super.key});

  @override
  State<GridViewDashboardScreen> createState() => _GridViewDashboardScreenState();
}

class _GridViewDashboardScreenState extends State<GridViewDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    var colorName = [Colors.blue, Colors.red, Colors.black, Colors.green, Colors.yellow, Colors.lightBlueAccent, Colors.deepPurple, Colors.amber];
    return Scaffold(

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //count, extend, builder
            Text('comming soon'),
            // Expanded(
             GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 3,mainAxisSpacing: 10, crossAxisSpacing: 10,children: [
                Container(height: 200,color: Colors.blue,),
                Container(height: 200,color: Colors.red,),
                Container(height: 200,color: Colors.yellow,),
                Container(height: 200,color: Colors.black,),
                Container(height: 200,color: Colors.brown,),
                Container(height: 200,color: Colors.cyan,),
                Container(height: 200,color: Colors.deepOrange,),
                Container(height: 200,color: Colors.green,),
              ],),
            // ),
           Container(height: 100),
            // Expanded(
              GridView.extent(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                maxCrossAxisExtent: 100,mainAxisSpacing: 10,crossAxisSpacing: 10,children: [

                Container(height: 200,color: Colors.blue,),
                Container(height: 200,color: Colors.red,),
                Container(height: 200,color: Colors.yellow,),
                Container(height: 200,color: Colors.black,),
                Container(height: 200,color: Colors.brown,),
                Container(height: 200,color: Colors.cyan,),
                Container(height: 200,color: Colors.deepOrange,),
                Container(height: 200,color: Colors.green,),


              ],),
            // ),
        // 22.43
        //           Expanded(
             GridView.builder(
                 shrinkWrap: true,physics: NeverScrollableScrollPhysics(),
                 gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 100, mainAxisSpacing: 11,crossAxisSpacing: 11,
              ),// child fixed size
                  // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: crossAxisCount), // count fixed
              itemCount: colorName.length,
              itemBuilder: (context, index){
                    return Container(
                      height: 200,
                      color: colorName[index],

                    );

              }),
            // ),



            // Expanded(
            GridView.builder(
              shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 10,crossAxisSpacing: 10),
                  itemCount: colorName.length,
                  itemBuilder: (context, index){
                return Container(color: colorName[index],);

              }),
            // )


          ],
        ),
      ),
    );
  }
}
