import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';

void main(){
  runApp(TextFieldDemo());
}
class TextFieldDemo extends StatelessWidget {
  const TextFieldDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Field Text UI",
      home: DashBordScreen(),
      theme: ThemeData(
        primarySwatch: Colors.red,

        // primaryColor: Colors.yellow,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.yellow
        ),
        textTheme: TextTheme(
          headlineLarge: TextStyle(color: Colors.yellow,fontSize: 21),
          headlineMedium: TextStyle(color: Colors.yellowAccent, fontSize: 22)
        )
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DashBordScreen extends StatefulWidget {
  const DashBordScreen({super.key});

  @override
  State<DashBordScreen> createState() => _DashBordScreenState();
}

class _DashBordScreenState extends State<DashBordScreen> {
  var emailText = TextEditingController();
  var passText = TextEditingController();
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          // margin: EdgeInsets.symmetric(horizontal: 20),
          children: [
            SizedBox(height: 100,),
          TextField(
            keyboardType: TextInputType.text,
            controller: emailText,

            // obscureText: true,
            // enabled: false,
            decoration: InputDecoration(
              hintText: "Enter Email here..",
              suffixText: "Username exits",
              suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye)),
              prefixIcon: Icon(Icons.email),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(21),
                borderSide: BorderSide(
                  color: Colors.yellow, width: 2
                )
              ),

              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(21),
                borderSide: BorderSide(
                  color: Colors.blue
                )
              ),

              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(21),
                borderSide: BorderSide(
                  color: Colors.red,
                )
              )

              // border: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(21),
              //   borderSide: BorderSide(
              //     color: Colors.deepOrangeAccent,
              //   ),
              // ),
            ),
          ),
        // second Text Field
          Container(height: 100,),
          TextField(
            keyboardType: TextInputType.phone,
            obscureText: true,
            obscuringCharacter: "-",
            controller: passText,
            decoration: InputDecoration(

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(21),
                borderSide: BorderSide(
                  color: Colors.yellow
                )
              ),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(21),
                borderSide: BorderSide(
                  color: Colors.yellow
                )
              ),



            ),
          ),
          SizedBox(height: 30,),
          TextField(
            cursorColor: Colors.blue,
            enabled: true,
            controller: textController,
            obscureText: false,
            obscuringCharacter: "-",
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(21),
              borderSide: BorderSide(color: Colors.green, width: 4)
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(21),
              // borderSide: BorderSi
            ),
            focusedErrorBorder: OutlineInputBorder(
              
            )
            // focusedBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(21),
            //   borderSide: BorderSide(color: Colors.orange, width: 4)
            // ),
            // enabledBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(21),
            //   borderSide: BorderSide(color: Colors.green,width: 4)
            // ),
            //
            // errorBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(21),
            //   borderSide: BorderSide(color: Colors.amber, width: 4)
            // ),
            // disabledBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(21),
            //   borderSide: BorderSide(color: Colors.brown,width: 4)
            // )
            //

            ),
          ),







            ElevatedButton(onPressed: (){
              String uEmail = emailText.text.toString();
              String uPass = passText.text;

              print("user email: $uEmail and user password: $uPass");

            }, child: Text("Submitted"))

          ],
        ),
      ),
    );
  }
}
