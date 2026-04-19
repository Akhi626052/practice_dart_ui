// form input and form related structures

import 'package:flutter/material.dart';

void main(){
  runApp(FormValDmo());
}
class FormValDmo extends StatelessWidget{
  FormValDmo({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FormValScreen(),
    );
  }

}

class FormValScreen extends StatefulWidget{
  FormValScreen({super.key});
  @override
  State<FormValScreen> createState() => FormValScreenState();
}

class FormValScreenState extends State<FormValScreen>{
  final _formKey = GlobalKey<FormState>();

  String name = '';
  String password = '';
  String email = '';
 Widget build(BuildContext context){
   return Scaffold(
     body: Form(
         key: _formKey,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
       children: [
         SizedBox(height: 80,),
       Container(
         margin: EdgeInsets.symmetric(horizontal: 20),
         child: Column(
           children: [
             TextFormField(
               decoration: InputDecoration(
                 hintText: 'Enter name',
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10)
                 ),
               ),
               validator: (value){
                 if(value == null || value.isEmpty){ // or
                   return 'Enter name';
                 }
                 return null;

               },
               onSaved: (value){
                 name = value!;
               },
             ),
           ],
         ),

       ),
         SizedBox(height: 20,),



         Container(
           margin: EdgeInsets.symmetric(horizontal: 20),
           child: TextFormField(

             keyboardType: TextInputType.emailAddress,
             decoration: InputDecoration(
               labelText: 'Enter Email',
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(7),
                 borderSide: BorderSide(width: 1,color: Colors.black)
               ),

             ),
             validator: (value){
               if(value == null || value.isEmpty){
                 return 'Enter email';
               }
               // if(!value.contains('@')){
               //   return 'Email must contain @';
               // }
               RegExp regExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
               if(!regExp.hasMatch(value)){
                  return 'Enter valid email';
               }
               return null;
             },
             onSaved: (value){
               email = value!;
             },
           ),
         ),

         SizedBox(height: 20,),
         Container(
           margin: EdgeInsets.symmetric(horizontal: 20),
           child: TextFormField(

             keyboardType: TextInputType.number,
             obscureText: true,
             decoration: InputDecoration(
               contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
               hintText: 'Enter Password',
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(10),
                 borderSide: BorderSide(color: Colors.black, width: 2),
               ),
             ),
             validator: (value){
               if(value == null || value.length < 6)  {

                 return 'Password must be at least 6 characters long';
               }
               return null;
             },
             onSaved: (value){
               password = value!;
             },

           ),
         ),


        Container(
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              backgroundColor: Colors.red,
              side: BorderSide(color: Colors.black,width: 1),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
              textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22,letterSpacing: 2,wordSpacing: 10)

            ),
            onPressed: (){
          if(_formKey.currentState!.validate()){
           _formKey.currentState!.save();
           _formKey.currentState!.reset();
           print(name);
           print(password);
           print(email);
          }


        }, child: Text("Submit")),
      ),




       ],
     ))
   );
 }
}


