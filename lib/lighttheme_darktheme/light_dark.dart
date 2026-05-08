import 'package:flutter/material.dart';
void main(){
  runApp(LightDarkApp());
}
class LightDarkApp extends StatelessWidget{
  const LightDarkApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      themeMode: ThemeMode.system, // Change to ThemeMode.light or ThemeMode.dark to test
      home: LgDrApp(),
    );
  }
}
class LgDrApp extends StatefulWidget {
  const LgDrApp({super.key});

  @override
  State<LgDrApp> createState() => _LgDrAppState();
}

class _LgDrAppState extends State<LgDrApp> {
  String gender = "select";
  bool check = false;
  bool check1 = false;
  bool is_check = false;
  String ans = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Light and Dark Theme")),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("This app adapts to system theme!"),
            Row(
              children: [
                Radio(value: "Male", groupValue: gender, onChanged: (value){
                  setState(() {
                    gender = value.toString();
                  });
                }),
                Text("Male")
              ],
            ),
            Row(
              children: [
                Radio(value: "Female", groupValue: gender, onChanged: (value){
                  setState(() {
                    gender = value.toString();
                  });
                }),
                Text("Female"),
              ],
            ),
            Row(
              children: [
                Radio(value: "Others", groupValue: gender, onChanged: (value){
                  setState(() {
                    gender = value.toString();
                  });
                }),
                Text("Others")
              ],
            ),
            SizedBox(height: 15,),
            Text("$gender"),
            SizedBox(height: 15,),
            Checkbox(value: check, onChanged: (val){
              setState(() {
                check = val!;
              });
            }),
            SizedBox(height: 10,),
            Checkbox(value: check1, onChanged: (value){
              setState(() {
                check1 = value!;
              });
            }),
            SizedBox(height: 15,),
            CheckboxListTile(value: is_check,
                title: Text("Male"),
                tileColor: Colors.yellowAccent,
                checkColor: Colors.white,
                fillColor: MaterialStateProperty.all(Colors.green),
                activeColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    width: 2,
                    color: Colors.black
                  )
                ),
                side: BorderSide(
                  width: 2,
                  color: Colors.orange),

                onChanged: (value){
              setState(() {
                is_check = value!;
                if(is_check == true){
                  ans = "Hello";
                }else{
                  ans = "";
                }
              });
                }),
            SizedBox(height: 15,),
            Text("${ans}",style: TextStyle(fontSize: 22),)
          ],
        ),
      ),

    );
  }
}
