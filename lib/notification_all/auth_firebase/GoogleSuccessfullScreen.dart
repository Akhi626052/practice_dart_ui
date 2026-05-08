import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
class GoogleSuccessfullScreen extends StatelessWidget{
  const GoogleSuccessfullScreen({super.key});
  Future<void> logout(BuildContext context) async {

    await FirebaseAuth.instance.signOut();
    // FirebaseAuth.instance.currentUser?.delete();
    await GoogleSignIn.instance.disconnect();

    Navigator.pop(context);

  }
  @override
  Widget build(BuildContext context){
    User? user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(onPressed: (){
            logout(context);
          }, icon: Icon(Icons.logout)),

          IconButton(onPressed: (){
            logout(context);
            FirebaseAuth.instance.currentUser?.delete();

          }, icon: Icon(Icons.delete_forever)),

        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(user?.photoURL ?? ""),
          ),
          Text(user?.displayName ?? ""),
          Text(user?.email ?? ""),
          Text(user?.phoneNumber ?? "No Phone Number"),
          Text(user?.uid ?? ""),

          SizedBox(height: 100,),
          Center(child: Text("Google Sign In Successful",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)),
        ],
      ),
    );
  }
}