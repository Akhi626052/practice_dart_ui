import 'package:flutter/material.dart';

void main(){
  runApp(MyAppFrom(title: "Form Page"));
}
class MyAppFrom extends StatelessWidget{
  String title;
  MyAppFrom({super.key, required this.title});
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyFormApp(),
    );
  }
}

class MyFormApp extends StatefulWidget{
  State<MyFormApp> createState() => MyFormAppState();
}
class MyFormAppState extends State<MyFormApp>{
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 250,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email"
                  ),
                  validator: (String? val){
                    final emailRegex = RegExp(
                      r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                    );
                    if(val == null || val.isEmpty){
                      return "required email";
                    }else if(!emailRegex.hasMatch(val)){
                      return "Enter Valid Email";
                    }
                    else{
                      return null;
                    }
                  },
                ),
              ),
              // password
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password"
                  ),
                  validator: (String? pass){
                    // final emailRegex = RegExp(
                    //   r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                    // );
                    if(pass == null || pass.isEmpty){
                      return "required password";
                    }else if(pass.length < 6){
                      return "Enter Valid password";
                    }
                    else{
                      return null;
                    }
                  },
                ),
              ),
              ElevatedButton(onPressed: (){
              final bool isValid = formkey.currentState?.validate() ?? false;
                if(isValid){
                  print("valid output: ${isValid}}");
                  print("Ok");

                }else{
                  print("Error");

                }


              }, child: Text("Button"))


            ],
          ),
        ),
      ),
    );
  }
}