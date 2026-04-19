import 'package:flutter/material.dart ';
void main(){
  runApp(HomePage());
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageState(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          labelLarge: TextStyle(color: Colors.blue)

        ),
      ),
    );
  }
}
class HomePageState extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomePageStateSecond();
  }

}
class HomePageStateSecond extends State<HomePageState>{
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Flutter State Management",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Column(
          children: [

            Center(child: Text("Comming Soon")),

            TextField(
              keyboardType: TextInputType.number,
              controller: no1Controller,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: no2Controller,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: (){
                  var no1 = int.parse(no1Controller.text.toString());
                  var no2 = int.parse(no2Controller.text.toString());
                  var sum = no1+no2;
                  result = "The sum of ${no1} and ${no2} is $sum";
                  setState((){

                  });
                }, child: Text("Add")),
                ElevatedButton(onPressed: (){
                  var no1 = int.parse(no1Controller.text.toString());
                  var no2 = int.parse(no2Controller.text.toString());
                  var diff = no1-no2;
                  result = "The Difference between ${no1} and ${no2} is $diff";
                  setState((){

                  });



                }, child: Text("Sub")),
                ElevatedButton(onPressed: (){

                  var no1 = int.parse(no1Controller.text.toString());
                  var no2 = int.parse(no2Controller.text.toString());
                  var product = no1*no2;
                  result = "The ${no1} can be divided by ${no2} is ${product.toStringAsFixed(2)}";
                  setState((){

                  });

                }, child: Text("Mult")),
                ElevatedButton(onPressed: (){

                  var no1 = int.parse(no1Controller.text.toString());
                  var no2 = int.parse(no2Controller.text.toString());
                  var diff = no1/no2;
                  result = "The ${no1} can be divided by ${no2} is $diff";
                  setState((){

                  });



                }, child: Text("Div")),
              ],
            ),

           Container(height: 20,),
            Text("result: ${result}",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),

          ],
        ),
      ),
    );
  }


}
